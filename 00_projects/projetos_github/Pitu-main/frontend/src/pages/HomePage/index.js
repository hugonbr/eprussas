import React from "react";
import {
  Container,
  InputGroup,
  FormControl,
  Button,
  Alert,
  Spinner
} from "react-bootstrap";
import Header from "../../components/Header";
import { ContentContainer, Form } from "./styles";
import ShortenerService from "../../services/shortenerService";

class HomePage extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      isLoading: false,
      url: "",
      code: "",
      errorMessage: ""
    };
  }

  handleSubmit = async event => {
    event.preventDefault();

    const { url } = this.state;

    this.setState({ isLoading: true, errorMessage: "" });

    if (!url) {
      this.setState({
        isLoading: false,
        errorMessage: "Informe uma URL para encurtar!"
      });
    } else {
      try {
        const service = new ShortenerService();
        const result = await service.generate({ url });

        this.setState({ isLoading: false, code: result.code });
      } catch (error) {
        this.setState({
          isLoading: false,
          errorMessage:
            "Ops! Ocorreu um erro ao tentar encurtar a URL, tente novamente."
        });
      }
    }
  };

  copyToClipboard = () => {
    const element = this.inputURL;
    element.select();
    document.execCommand("copy");
  };

  render() {
    const { isLoading, errorMessage, code } = this.state;

    return (
      <Container>
        <Header>Seu encurtador de URL</Header>
        <ContentContainer>
          <Form onSubmit={this.handleSubmit}>
            <InputGroup className="mb-3">
              <FormControl
                placeholder="Digite a URL que você deseja encurtar"
                defaultValue=""
                onChange={e => this.setState({ url: e.target.value })}
              />
              <InputGroup.Append>
                <Button variant="primary" type="submit">
                  Encurtar
                </Button>
              </InputGroup.Append>
            </InputGroup>

            {isLoading ? (
              // Carregando os dados
              <Spinner animation="border" />
            ) : (
              code && (
                // Mostra o valor da tela
                <>
                  <InputGroup className="mb-3">
                    <FormControl
                      autoFocus={true}
                      defaultValue={`http://localhost:3000/${code}`}
                      ref={input => (this.inputURL = input)}
                    />
                    <InputGroup.Append>
                      <Button
                        variant="outline-secondary"
                        onClick={() => this.copyToClipboard()}
                      >
                        Copiar
                      </Button>
                    </InputGroup.Append>
                  </InputGroup>
                  <p>
                    Para acompanhar as estatíticas, acesse{" "}
                    <strong>http://localhost:3000/{code}/stats</strong>
                  </p>
                </>
              )
            )}

            {errorMessage && <Alert variant="danger">{errorMessage}</Alert>}
          </Form>
        </ContentContainer>
      </Container>
    );
  }
}

export default HomePage;
