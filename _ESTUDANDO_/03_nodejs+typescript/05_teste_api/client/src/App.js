import { useEffect, useState } from 'react';
import axios from 'axios';

function App() {
  const [message, setMessage] = useState('');

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
    <div>
      <h1>{message}</h1>
      {/* <h1 className='indigo'>{message}</h1> */}
    </div>
  );
}

export default App;
