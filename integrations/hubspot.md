````

  useEffect(() => {
    const script = document.createElement('script');

    script.src = "//js.hs-scripts.com/<NUMBER>.js";
    script.async = true;

    document.body.appendChild(script);

    return () => {
      document.body.removeChild(script);
    }
  }, []);


```
