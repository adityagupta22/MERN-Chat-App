import React, { useEffect, useState } from 'react';
import axios from "axios";
import SideDrawer from '../components/miscellaneous/SideDrawer';
import MyChats from '../components/MyChats';
import ChatBox from '../components/ChatBox';
import { ChatState } from '../Context/ChatProvider';
import { Box } from '@chakra-ui/react';

const ChatPage = () => {

    const {user}=ChatState()?ChatState():{}
    // const [fetchAgain, setFetchAgain] = useState(false)
    
  return (
    <div style={{width:"100%"}}>
        {user && <SideDrawer/>}
        <Box
        display="flex"
        justifyContent="space-between"
        w="100%"
        h='91.5vh'
        p='10px'
        >
            {user && <MyChats />}
            {user && <ChatBox />}
        </Box>
    </div>
    );
};

export default ChatPage