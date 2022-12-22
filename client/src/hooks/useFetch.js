import {useState, useEffect} from 'react'

function useFetch(url) {
    const [data, setData] = useState([])

    useEffect(() => {
        fetch(url)
            .then(r => {
                if (!r.ok) {
                    throw Error('Could not fetch the data for that resource')
                }
                return r.json()
            })
            .then(data => {setData(data)})
    }, [url])
  return {data, setData}
}

export default useFetch