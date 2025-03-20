import streamlit as st 

def run():
    st.title("Responsive iFrame Example")

    # Get the full screen width
    width = st.sidebar.slider("Set Width", min_value=400, max_value=1200, value=800)
    height = st.sidebar.slider("Set Height", min_value=300, max_value=800, value=600)

    st.components.v1.iframe("http://0.0.0.0:8080", width=width, height=height, scrolling=True)

if __name__ == "__main__":
    run()
