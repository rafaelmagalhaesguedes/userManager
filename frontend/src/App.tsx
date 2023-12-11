import { useEffect, useState } from 'react';

type User = {
  id: number;
  name: string;
  email: string;
};

function App() {

  const [user, setUser] = useState<User[]>([]);

  useEffect(() => {
    const fetchUser = async () => {
      const response = await fetch('http://localhost:3001/users');
      const data = await response.json();
      setUser(data);
    };
    fetchUser();
  }, []);

  return (
    <>
      <h1>Frontend</h1>
      {user.map((user) => (
        <div key={user.id}>
          <h1>{user.name}</h1>
          <p>{user.email}</p>
        </div>
      ))}
    </>
  )
}

export default App
