
import './App.css';
// import {BrowserRouter} from 'react-router-dom';
// import {Switch, Route} from 'react-router-dom';
import useFetch from './hooks/useFetch';

function App() {
  const {data} = useFetch('/subcontractors')
  console.log(data)


  return (
    <div className="App">
      {/* <p>{data.map((element)=><p>{element.id}</p>)}</p> */}
    </div>
  );
}

export default App;
