import { Fragment } from 'react';
import './App.css';

//components
import InputTodo from './components/InputTodo';
import ListTodo from './components/ListTodo';
import Navbar from './components/Navbar';

function App() {
  return (
    <Fragment>
      <Navbar />
      <div className="container">
        <InputTodo />
        <ListTodo />
      </div>
    </Fragment>
  );
}

export default App;
