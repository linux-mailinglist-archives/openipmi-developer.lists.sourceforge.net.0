Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 723F778211
	for <lists+openipmi-developer@lfdr.de>; Mon, 29 Jul 2019 00:24:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1hrraC-0002xB-7O; Sun, 28 Jul 2019 22:24:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1hrraA-0002x3-Rc
 for openipmi-developer@lists.sourceforge.net; Sun, 28 Jul 2019 22:23:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eeVlIHhJ4D6TBKmqQQ8m4GW/E3lSgbgyou5N7Ak+AYE=; b=HMmRL/Ym7NhSx5lRRT+3c+IENY
 sAEr5haas9Wp6A/4xQV9Ou73u5RbocKRFB7HciHrEvp+FnMK+ULOpLZq7ur9yr9lhV/Jt/2DY8K/T
 vylv7Rh0KGAeVFsnx3V6u/n3/yzUWhQlDvQNW1hENhXRApMT9aatPQ0+PGHukQ4fNCHg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=eeVlIHhJ4D6TBKmqQQ8m4GW/E3lSgbgyou5N7Ak+AYE=; b=ZHIbZkiqB2nWbHzhME/bX0u2JV
 4LqSEyoxjt8P/eM0kc09scpKtBv9LtnaFzJuVgMEfumi7nCvb7mlb0uyjYQJenCqenxqAUWNZPsnb
 AepE9nSmVLDECh3NDa9H5Y3qvfvwpEitSEuJuFXIKGFwJKhWeC/1UHiZavoJSOddvnU0=;
Received: from mail-pg1-f195.google.com ([209.85.215.195])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hrra3-00BxK6-DZ
 for openipmi-developer@lists.sourceforge.net; Sun, 28 Jul 2019 22:23:58 +0000
Received: by mail-pg1-f195.google.com with SMTP id i18so27204308pgl.11
 for <openipmi-developer@lists.sourceforge.net>;
 Sun, 28 Jul 2019 15:23:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id;
 bh=eeVlIHhJ4D6TBKmqQQ8m4GW/E3lSgbgyou5N7Ak+AYE=;
 b=KnRlZM50pjo3SPc3cmUutlAdRdiRX5EQZ1vbEJv8u+WGPFKxdeSYm1sKhYGzD2HyCJ
 oVsxTaJH31Y9vh49w0aSIxnnw89/X2+ej9qkFAyG/hEQugan20OpAWsaAIrNfYVNxHFV
 VXMj385pydFJkE5pUYdKFek7LO6zY+ypamp3ds/wZd/bHLApFYacFDUbSe69KSDptSjm
 dKsJQDVEow8NgxIAq/WPMFUW3hwBzaY09l38LkhhmBVVGBiX/s39AMOviGJ93jxvWW3a
 WrGgij43jveemJfzjnvnV09ZDP7vD/e8uiAsjubz1BAVXqrJBR8cBENLEIhjy6nlsOn8
 wXJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id;
 bh=eeVlIHhJ4D6TBKmqQQ8m4GW/E3lSgbgyou5N7Ak+AYE=;
 b=PzgSfA/8C7UqbLV+tmZavUGhIN5w5Q9GPM0TojaTogHSXHXhG0wJtlE0+PpaHrm9Ry
 fcv756oRf5tfXsWUUxfDsXx33eZ6xsjlbLtJpmzySbTfhETY/RaavKrsPlerWGQjKAs/
 705lGZL+kj/vUoSBUrv0clw0h1JuDf5mk1QBknOBO/TDDflOBNKDW5/mwb988p1YNZWz
 HGt1XzpMYfC6NtA6aMn0nZTWHbaPtYuDLsIUY413OIuEAQi3kbUTWgpLSeqaEgaj1zgt
 NZouGCy+BZ7R3/5LLt9QoIepuGSd/2z3Ba0xEbAjLnvNo0fVUXDCg36ojI9WPaf+wKE3
 M5ZQ==
X-Gm-Message-State: APjAAAU3OAGUp4p+7yxze2NJAJDsz54rG7uCCrhWe7MykYv+sz1Waf79
 g0E17Teg4+hPz6aOYFtKYxBRsMk=
X-Google-Smtp-Source: APXvYqzlyOFLZ6BTb730ypGZ7ZqanoFpmN2SO+83q4Jv445DvCuNZiPWF6tb3cB6PVsSl1MrqzxGCQ==
X-Received: by 2002:a63:b346:: with SMTP id x6mr101871106pgt.218.1564352624945; 
 Sun, 28 Jul 2019 15:23:44 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id h26sm62614317pfq.64.2019.07.28.15.23.43
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 28 Jul 2019 15:23:44 -0700 (PDT)
Received: from t430.minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:c07a:dd51:92ad:bff1])
 by serve.minyard.net (Postfix) with ESMTPA id 5C8EE180039;
 Sun, 28 Jul 2019 22:23:42 +0000 (UTC)
Received: by t430.minyard.net (Postfix, from userid 1000)
 id 3BE5A301175; Sun, 28 Jul 2019 17:23:42 -0500 (CDT)
From: minyard@acm.org
To: Asmaa Mnebhi <Asmaa@mellanox.com>
Date: Sun, 28 Jul 2019 17:23:38 -0500
Message-Id: <20190728222338.11391-1-minyard@acm.org>
X-Mailer: git-send-email 2.17.1
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.215.195 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: mvista.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hrra3-00BxK6-DZ
Subject: [Openipmi-developer] [PATCH] Cleanups for the ipmb code
X-BeenThere: openipmi-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Developer list of OpenIPMI library and Linux driver
 <openipmi-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/openipmi-developer>, 
 <mailto:openipmi-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=openipmi-developer>
List-Post: <mailto:openipmi-developer@lists.sourceforge.net>
List-Help: <mailto:openipmi-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/openipmi-developer>, 
 <mailto:openipmi-developer-request@lists.sourceforge.net?subject=subscribe>
Cc: Corey Minyard <cminyard@mvista.com>,
 openipmi-developer@lists.sourceforge.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

From: Corey Minyard <cminyard@mvista.com>

Create an ipmb data structure and don't re-use all the serial
server data structures and code.  This reduces and simplifies
the code quite a bit and let's us pass the ipmb device in a
way that allows more than one ipmb device and doesn't use
global data.

Also get rid of the recv_msg stuff, as with the new changes
it's no longer necessary as we just pass the data straight
in.

Get rid of the prim_ipmb_in_cfg_file entry in the channel, as it
didn't really do anything.

Signed-off-by: Corey Minyard <cminyard@mvista.com>
---
I apologize, I really didn't spend enough time looking at your changes.
The reuse of the serial data structures and code wasn't really
appropriate, it added extra unnecessary complexity and coupling.  So
I reworked it some, hopefully this is acceptable.

-corey

 lanserv/OpenIPMI/ipmbserv.h |  21 ++++-
 lanserv/OpenIPMI/serv.h     |   5 --
 lanserv/bmc.c               |   4 +-
 lanserv/ipmb_ipmi.c         | 163 +++++++++++++-----------------------
 lanserv/ipmi_sim.c          |  59 +++++++------
 5 files changed, 111 insertions(+), 141 deletions(-)

diff --git a/lanserv/OpenIPMI/ipmbserv.h b/lanserv/OpenIPMI/ipmbserv.h
index 938ace3..5c067a0 100644
--- a/lanserv/OpenIPMI/ipmbserv.h
+++ b/lanserv/OpenIPMI/ipmbserv.h
@@ -53,10 +53,27 @@
 #define __IPMBSERV_H
 
 #include <OpenIPMI/msg.h>
-#include <OpenIPMI/serserv.h>
 
-typedef struct serserv_data_s ipmbserv_data_t;
+typedef struct ipmbserv_data_s ipmbserv_data_t;
+
+struct ipmbserv_data_s {
+    channel_t channel;
+
+    void (*send_out)(ipmbserv_data_t *si, unsigned char *data,
+		     unsigned int data_len);
+
+    sys_data_t *sysinfo;
+
+    os_handler_t *os_hnd;
+
+    void *user_info;
+
+    char *ipmbdev;
+    int fd;
+};
 
 int ipmb_read_config(char **tokptr, sys_data_t *sys, const char **errstr);
+void ipmb_handle_data(ipmbserv_data_t *ipmb, uint8_t *data, unsigned int len);
+int ipmb_init(ipmbserv_data_t *ipmb);
 
 #endif /* __IPMBSERV_H */
diff --git a/lanserv/OpenIPMI/serv.h b/lanserv/OpenIPMI/serv.h
index 3d40060..10f2fb0 100644
--- a/lanserv/OpenIPMI/serv.h
+++ b/lanserv/OpenIPMI/serv.h
@@ -219,9 +219,6 @@ struct channel_s
      */
     int (*oem_intf_recv_handler)(channel_t *chan, msg_t *msg,
 				 unsigned char *rdata, unsigned int *rdata_len);
-
-    /* Set to 1 if ipmb channel 0 is listed in the config file, 0 otherwise */
-    int prim_ipmb_in_cfg_file;
 };
 
 struct user_s
@@ -412,8 +409,6 @@ struct sys_data_s {
     int (*lan_channel_init)(void *info, channel_t *chan);
     int (*ser_channel_init)(void *info, channel_t *chan);
     int (*ipmb_channel_init)(void *info, channel_t *chan);
-
-    char ipmidev[15];
 };
 
 static inline void
diff --git a/lanserv/bmc.c b/lanserv/bmc.c
index 264b4ae..e5434ee 100644
--- a/lanserv/bmc.c
+++ b/lanserv/bmc.c
@@ -613,8 +613,7 @@ ipmi_mc_enable(lmc_data_t *mc)
 	    err = sys->lan_channel_init(sys->info, chan);
 	else if (chan->medium_type == IPMI_CHANNEL_MEDIUM_RS232)
 	    err = sys->ser_channel_init(sys->info, chan);
-	else if ((chan->medium_type == IPMI_CHANNEL_MEDIUM_IPMB) &&
-		((chan->channel_num != 0) || (chan->prim_ipmb_in_cfg_file)))
+	else if (chan->medium_type == IPMI_CHANNEL_MEDIUM_IPMB)
 	    err = sys->ipmb_channel_init(sys->info, chan);
 	else 
 	    chan_init(chan);
@@ -805,7 +804,6 @@ ipmi_mc_alloc_unconfigured(sys_data_t *sys, unsigned char ipmb,
     mc->ipmb_channel.protocol_type = IPMI_CHANNEL_PROTOCOL_IPMB;
     mc->ipmb_channel.session_support = IPMI_CHANNEL_SESSION_LESS;
     mc->ipmb_channel.active_sessions = 0;
-    mc->ipmb_channel.prim_ipmb_in_cfg_file = 0;
     mc->channels[0] = &mc->ipmb_channel;
     mc->channels[0]->log = sys->clog;
 
diff --git a/lanserv/ipmb_ipmi.c b/lanserv/ipmb_ipmi.c
index 16914aa..72c3649 100644
--- a/lanserv/ipmb_ipmi.c
+++ b/lanserv/ipmb_ipmi.c
@@ -55,33 +55,50 @@
 #include <OpenIPMI/ipmbserv.h>
 #include <OpenIPMI/ipmi_mc.h>
 
-#define	IPMIDEV_MAX_SIZE	15
-
 static void
-raw_send(ipmbserv_data_t *ipmb, unsigned char *data, unsigned int len)
+ipmb_send(msg_t *imsg, ipmbserv_data_t *ipmb)
 {
+    unsigned char msg[(IPMI_SIM_MAX_MSG_LENGTH + 7) * 3];
+    unsigned int msg_len;
+
+    msg[0] = imsg->len + 7;
+    msg[1] = imsg->rs_addr;
+    msg[2] = (imsg->netfn << 2) | imsg->rs_lun;
+    msg[3] = -ipmb_checksum(msg + 1, 2, 0);
+    msg[4] = imsg->rq_addr;
+    msg[5] = (imsg->rq_seq << 2) | imsg->rq_lun;
+    msg[6] = imsg->cmd;
+    memcpy(msg + 7, imsg->data, imsg->len);
+    msg_len = imsg->len + 7;
+    msg[msg_len] = -ipmb_checksum(msg + 4, msg_len - 4, 0);
+    msg_len++;
+
     if (ipmb->sysinfo->debug & DEBUG_RAW_MSG)
-	debug_log_raw_msg(ipmb->sysinfo, data, len, "Raw serial send:");
-    ipmb->send_out(ipmb, data, len);
+	debug_log_raw_msg(ipmb->sysinfo, msg, msg_len, "Raw ipmb send:");
+    ipmb->send_out(ipmb, msg, msg_len);
 }
 
-/***********************************************************************
- *
- * IPMB message
- *
- * According to the IPMI spec, the IPMB message size should never
- * exceed 32 bytes. So it doesn't harm to set the max size of the
- * recv_msg to 36 bytes.
- *
- ***********************************************************************/
-struct ipmb_data {
-    unsigned char   recv_msg[IPMI_SIM_MAX_MSG_LENGTH + 4];
-    unsigned int    recv_msg_len;
-    int             recv_msg_too_many;
-};
-
 static void
-ipmb_handle_msg(unsigned char *imsg, unsigned int len, ipmbserv_data_t *ipmb)
+ipmb_return_rsp(channel_t *chan, msg_t *imsg, rsp_msg_t *rsp)
+{
+    ipmbserv_data_t *ser = chan->chan_info;
+    msg_t msg;
+
+    msg.netfn = rsp->netfn;
+    msg.cmd = rsp->cmd;
+    msg.data = rsp->data;
+    msg.len = rsp->data_len;
+    msg.rq_lun = imsg->rs_lun;
+    msg.rq_addr = imsg->rs_addr;
+    msg.rs_lun = imsg->rq_lun;
+    msg.rs_addr = imsg->rq_addr;
+    msg.rq_seq = imsg->rq_seq;
+
+    ipmb_send(&msg, ser);
+}
+
+void
+ipmb_handle_data(ipmbserv_data_t *ipmb, uint8_t *imsg, unsigned int len)
 {
     msg_t msg;
 
@@ -119,59 +136,11 @@ ipmb_handle_msg(unsigned char *imsg, unsigned int len, ipmbserv_data_t *ipmb)
     channel_smi_send(&ipmb->channel, &msg);
 }
 
-static void
-ipmb_handle_char(unsigned char ch, ipmbserv_data_t *ipmb)
-{
-    struct ipmb_data *info = ipmb->codec_info;
-    unsigned int len = info->recv_msg_len;
-
-    if (ipmb->bind_fd == 0) {
-	if (info->recv_msg_len != 0) {
-	    ipmb_handle_msg(info->recv_msg, info->recv_msg_len, ipmb);
-	    info->recv_msg_len = 0;
-	}
-	return;
-    }
-
-    if (len >= sizeof(info->recv_msg))
-	return;
-
-    info->recv_msg[len] = ch;
-    info->recv_msg_len++;
-}
-
-static void
-ipmb_send(msg_t *imsg, ipmbserv_data_t *ipmb)
-{
-    unsigned char msg[(IPMI_SIM_MAX_MSG_LENGTH + 7) * 3];
-    unsigned int msg_len;
-
-    msg[0] = imsg->len + 7;
-    msg[1] = imsg->rs_addr;
-    msg[2] = (imsg->netfn << 2) | imsg->rs_lun;
-    msg[3] = -ipmb_checksum(msg + 1, 2, 0);
-    msg[4] = imsg->rq_addr;
-    msg[5] = (imsg->rq_seq << 2) | imsg->rq_lun;
-    msg[6] = imsg->cmd;
-    memcpy(msg + 7, imsg->data, imsg->len);
-    msg_len = imsg->len + 7;
-    msg[msg_len] = -ipmb_checksum(msg + 4, msg_len - 4, 0);
-    msg_len++;
-
-    raw_send(ipmb, msg, msg_len);
-}
-
-static int
-ipmb_setup(ipmbserv_data_t *ipmb)
+int
+ipmb_init(ipmbserv_data_t *ipmb)
 {
-    struct ipmb_data *info;
-
-    info = malloc(sizeof(*info));
-    if (!info)
-	return -1;
-    memset(info, 0, sizeof(*info));
-    ipmb->codec_info = info;
-    ipmb->connected = 1;
+    ipmb->channel.return_rsp = ipmb_return_rsp;
+    chan_init(&ipmb->channel);
     return 0;
 }
 
@@ -182,23 +151,22 @@ ipmb_read_config(char **tokptr, sys_data_t *sys, const char **errstr)
     unsigned int chan_num;
     int err;
     const char *tok;
+    char *ipmbdev;
 
     err = get_uint(tokptr, &chan_num, errstr);
-    if (!err && (chan_num >= IPMI_MAX_CHANNELS)) {
+    if (err)
+	return -1;
+    if (chan_num >= IPMI_MAX_CHANNELS) {
+	*errstr = "Invalid channel number, must be 0-15";
 	return -1;
     }
 
     /*
-     * Primary IPMB associated with channel 0 was already
-     * initialized in ipmi_mc_alloc_unconfigured.
-     * So skip the check for channel already in use if
-     * ipmb is listed in the config file (lan.conf).
+     * Allow an IPMB channel to override the default channel 0.
      */
-    if (chan_num != 0) {
-	if (sys->chan_set[chan_num] != NULL) {
-	    *errstr = "Channel already in use";
-	    return -1;
-	}
+    if (chan_num != 0 && sys->chan_set[chan_num]) {
+	*errstr = "Channel already in use";
+	return -1;
     }
 
     tok = mystrtok(NULL, " \t\n", tokptr);
@@ -207,30 +175,20 @@ ipmb_read_config(char **tokptr, sys_data_t *sys, const char **errstr)
 	return -1;
     }
 
-    tok = mystrtok(NULL, " \t\n", tokptr);
-    if (strlen(tok) > IPMIDEV_MAX_SIZE) {
-	*errstr = "Length of device file name %s > 15";
-	return -1;
-    }
-
-    strcpy(sys->ipmidev, tok);
-    if (!(sys->ipmidev)) {
-	*errstr = "Unable to set ipmidev";
+    ipmbdev = strdup(tok);
+    if (!ipmbdev) {
+	*errstr = "Unable to alloc ipmi_dev_int";
 	return -1;
     }
 
     ipmb = malloc(sizeof(*ipmb));
     if (!ipmb) {
+	free(ipmbdev);
 	*errstr = "Out of memory";
 	return -1;
     }
     memset(ipmb, 0, sizeof(*ipmb));
-
-    ipmb->codec = (ser_codec_t *)malloc(sizeof(ser_codec_t));
-    if (!ipmb->codec) {
-	*errstr = "Out of memory";
-	return -1;
-    }
+    ipmb->ipmbdev = ipmbdev;
 
     ipmb->channel.session_support = IPMI_CHANNEL_SESSION_LESS;
     ipmb->channel.medium_type = IPMI_CHANNEL_MEDIUM_IPMB;
@@ -238,18 +196,9 @@ ipmb_read_config(char **tokptr, sys_data_t *sys, const char **errstr)
 
     ipmb->channel.channel_num = chan_num;
 
-    ipmb->codec->handle_char = ipmb_handle_char;
-    ipmb->codec->send = ipmb_send;
-    ipmb->codec->setup = ipmb_setup;
-
     ipmb->sysinfo = sys;
     ipmb->channel.chan_info = ipmb;
 
-    if (chan_num == 0)
-	ipmb->channel.prim_ipmb_in_cfg_file = 1;
-    else
-	ipmb->channel.prim_ipmb_in_cfg_file = 0;
-
     sys->chan_set[chan_num] = &ipmb->channel;
 
     return 0;
diff --git a/lanserv/ipmi_sim.c b/lanserv/ipmi_sim.c
index 0a20e22..ad273e2 100644
--- a/lanserv/ipmi_sim.c
+++ b/lanserv/ipmi_sim.c
@@ -104,7 +104,6 @@ static char *command_string = NULL;
 static char *command_file = NULL;
 static int debug = 0;
 static int nostdio = 0;
-static char g_ipmi_dev[15];
 
 /*
  * Keep track of open sockets so we can close them on exec().
@@ -603,14 +602,26 @@ ipmb_data_ready(int fd, void *cb_data, os_hnd_fd_id_t *id)
 
         ipmb->os_hnd->remove_fd_to_wait_for(ipmb->os_hnd, id);
         close(fd);
-        ipmb->con_fd = -1;
+        ipmb->fd = -1;
         return;
     }
 
-    ipmb->bind_fd = -1;
-    serserv_handle_data(ipmb, msgd, len);
-    ipmb->bind_fd = 0;
-    serserv_handle_data(ipmb, msgd, 1);
+    ipmb_handle_data(ipmb, msgd, len);
+}
+
+static void
+ipmb_send(ipmbserv_data_t *ipmb, unsigned char *data, unsigned int data_len)
+{
+    int rv;
+
+    if (ipmb->fd == -1)
+	/* Not connected */
+	return;
+
+    rv = write(ipmb->fd, data, data_len);
+    if (rv) {
+	/* FIXME - log an error. */
+    }
 }
 
 static int
@@ -619,34 +630,37 @@ ipmb_channel_init(void *info, channel_t *chan)
     misc_data_t *data = info;
     ipmbserv_data_t *ipmb = chan->chan_info;
     int err;
-    int fd;
     os_hnd_fd_id_t *fd_id;
 
     ipmb->os_hnd = data->os_hnd;
     ipmb->user_info = data;
-    ipmb->send_out = ser_send;
-    err = serserv_init(ipmb);
+    ipmb->send_out = ipmb_send;
 
+    err = ipmb_init(ipmb);
     if (err) {
-        fprintf(stderr, "Unable to init ipmb: 0x%x\n", err);
-        exit(1);
+	fprintf(stderr, "Unable to init ipmb: 0x%x\n", err);
+	exit(1);
     }
 
-    fd = ipmb_open(g_ipmi_dev);
-    if (fd == -1){
+    ipmb->fd = ipmb_open(ipmb->ipmbdev);
+    if (ipmb->fd == -1){
         fprintf(stderr, "Unable to open ipmi device file: 0x%x\n", err);
-        exit(1);
+	exit(1);
     }
 
-    ipmb->con_fd = fd;
+    err = data->os_hnd->add_fd_to_wait_for(data->os_hnd, ipmb->fd,
+					   ipmb_data_ready, ipmb,
+					   NULL, &fd_id);
+    if (err) {
+	close(ipmb->fd);
+	ipmb->fd = -1;
+        fprintf(stderr, "Unable to open ipmi device file: 0x%x\n", err);
+	exit(1);
+    }
 
-    err = data->os_hnd->add_fd_to_wait_for(data->os_hnd, ipmb->con_fd,
-                                            ipmb_data_ready, ipmb,
-                                            NULL, &fd_id);
-    if (!err)
-        isim_add_fd(fd);
+    isim_add_fd(ipmb->fd);
 
-    return err;
+    return 0;
 }
 
 static void
@@ -1584,9 +1598,6 @@ main(int argc, const char *argv[])
     if (read_config(&sysinfo, config_file, print_version))
 	exit(1);
 
-    if (sysinfo.ipmidev != NULL)
-	strcpy(g_ipmi_dev, sysinfo.ipmidev);
-
     if (print_version)
 	exit(0);
 
-- 
2.17.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
