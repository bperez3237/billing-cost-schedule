
import './App.css';
// import {BrowserRouter} from 'react-router-dom';
// import {Switch, Route} from 'react-router-dom';
import useFetch from './hooks/useFetch';
import {useState} from 'react';

function App() {
  const [selected, setSelected] = useState('/subcontractors')
  const {data} = useFetch(selected)
  console.log(data)

  return (
    <div className="App">
      <div className='select'>
        <h1 onClick={(e)=>setSelected('/subcontractors')}>Subcontractors</h1>
        <h1 onClick={(e)=>setSelected('/activities')}>Activities</h1>
        <h1 onClick={(e)=>setSelected('/locations')}>Locations</h1>
        <h1 onClick={(e)=>setSelected('/costs')}>Costs</h1>
      </div>
      <div>{data.map((element)=><p key={element.id}>{element.name}</p>)}</div>
    </div>
  );
}

export default App;
