import { useEffect, useState } from 'react';
import axios from 'axios';

function App() {
  const [message, setMessage] = useState([]);

  useEffect(() => {
    const fetchData = async () => {
      const response = await axios.get('http://localhost:5000/api');
      setMessage(response.data.message);
    };

    fetchData().then(() => {
      // Indicate that the effect can be deferred
      // until after the main thread is idle
      if (typeof window !== 'undefined' && window?.React?.startTransition) {
        window.React.startTransition(() => {});
      }
    });
  }, []);
  
  return (
    <div className="container">

      {/* {message.map(item => (
        <div key={item.id}>
          <p>ID: {item.id}</p>
          <p>Nome: {item.desc_text}</p>
        </div>
      ))} */}
      
      <table className="table table-striped table-hover">
        <thead>
          <tr>
            <th>ID</th>
            <th>Task</th>
          </tr>
        </thead>
        <tbody>
          {message.map(item => (
            <tr key={item.id}>
              <td>{item.id}</td>
              <td>{item.desc_text}</td>
            </tr>
          ))}
        </tbody>
      </table>

      {/* Outros testes */}
      {/* <h1>{message}</h1> */}
      {/* <h1>{typeof(2+2)}</h1> */}
      {/* <h1>{2+2}</h1> */}
      {/* <h1>{JSON.parse(message)}</h1> */}
      {/* <h1 className='indigo'>{message}</h1> */}
    </div>
  );
}

export default App;
