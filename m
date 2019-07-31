Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A22607C8B1
	for <lists+openipmi-developer@lfdr.de>; Wed, 31 Jul 2019 18:31:07 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1hsrVJ-0005FF-ET; Wed, 31 Jul 2019 16:31:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmaa@mellanox.com>) id 1hsrVH-0005F2-FQ
 for openipmi-developer@lists.sourceforge.net; Wed, 31 Jul 2019 16:31:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=References:In-Reply-To:Message-Id:Date:Subject:Cc:
 To:From:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=z1qOnbAfPXgLNNsG+7dj+fopIwPWbhQ8sWUiTmt2frw=; b=R7nbF32ziuD7EzI6yYFkfqG+9n
 3Unseav4Birv+Z7+Z8Yv71mlIFT7k3ovNe9vPA241nt7pLrRUKmRKHvNFYlXoG86kUsb9b+yApn9v
 VvfOSuiWGhAdvxulxcxf8RVTHlfHLR8GCO8fsRjRWUXal65sIUjZ/nXYK+3LlLx/B0EU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=z1qOnbAfPXgLNNsG+7dj+fopIwPWbhQ8sWUiTmt2frw=; b=SSAWSAWBID6hSi/zM4gfpSiuwW
 Nafo1d0j7E4nmOLd9wADieOaLvFxJmWpkK2hWQIywAuQtcFrw0mo5QV2wDf9wG+ivvqsqE1LNYDwN
 KGitUMsGNnmkWO2HH+FP+WaS7ZsV+yTmskTHdxUrv7KqFEfmDitrWPhhnzOdUDXXZxHM=;
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtp (Exim 4.90_1)
 id 1hsrVF-005qJT-1E
 for openipmi-developer@lists.sourceforge.net; Wed, 31 Jul 2019 16:31:03 +0000
Received: from Internal Mail-Server by MTLPINE2 (envelope-from
 asmaa@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 31 Jul 2019 19:30:49 +0300
Received: from farm-0002.mtbu.labs.mlnx (farm-0002.mtbu.labs.mlnx [10.15.2.32])
 by mtbu-labmailer.labs.mlnx (8.14.4/8.14.4) with ESMTP id x6VGUm7S030735;
 Wed, 31 Jul 2019 12:30:48 -0400
Received: (from asmaa@localhost)
 by farm-0002.mtbu.labs.mlnx (8.14.7/8.13.8/Submit) id x6VGUmUg017721;
 Wed, 31 Jul 2019 12:30:48 -0400
From: Asmaa Mnebhi <Asmaa@mellanox.com>
To: minyard@acm.org
Date: Wed, 31 Jul 2019 12:30:45 -0400
Message-Id: <cbebca7e48ab9a9c88ca13388c4982ef1ca45971.1564590483.git.Asmaa@mellanox.com>
X-Mailer: git-send-email 2.1.2
In-Reply-To: <cover.1564590483.git.Asmaa@mellanox.com>
References: <cover.1564590483.git.Asmaa@mellanox.com>
In-Reply-To: <cover.1564590483.git.Asmaa@mellanox.com>
References: <cover.1564590483.git.Asmaa@mellanox.com>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: mellanox.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [193.47.165.129 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
X-Headers-End: 1hsrVF-005qJT-1E
Subject: [Openipmi-developer] [PATCH v6 1/1] Support IPMB
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
Cc: openipmi-developer@lists.sourceforge.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Support receiving IPMB request on Satellite MC. The Satellite
MC uses this code to handle the incoming IPMB request,
generate a response and send it back to the requester.

For instance, if it is an IPMB bridged request, a BMC will be
fowarding the request message to the responder device
(satellite MC for example), so this code would be supported
on the responder device, which will generate a response and send
it back to the BMC.

Fixed ipmb_read_config -> ipmbserv_read_config

Signed-off-by: Asmaa Mnebhi <Asmaa@mellanox.com>
---
 lanserv/Makefile.am          |   2 +-
 lanserv/OpenIPMI/Makefile.am |   2 +-
 lanserv/OpenIPMI/ipmbserv.h  |  83 ++++++++++++++++
 lanserv/OpenIPMI/serv.h      |   4 +
 lanserv/README.design        |   6 +-
 lanserv/bmc.c                |   4 +
 lanserv/config.c             |   3 +
 lanserv/ipmb_ipmi.c          | 219 +++++++++++++++++++++++++++++++++++++++++++
 lanserv/ipmi_sim.c           |  96 +++++++++++++++++++
 lanserv/lan.conf             |  13 +++
 10 files changed, 429 insertions(+), 3 deletions(-)
 create mode 100644 lanserv/OpenIPMI/ipmbserv.h
 create mode 100644 lanserv/ipmb_ipmi.c

diff --git a/lanserv/Makefile.am b/lanserv/Makefile.am
index 265b74a..659e957 100644
--- a/lanserv/Makefile.am
+++ b/lanserv/Makefile.am
@@ -34,7 +34,7 @@ noinst_HEADERS = emu.h bmc.h
 
 libIPMIlanserv_la_SOURCES = lanserv_ipmi.c lanserv_asf.c priv_table.c \
 	lanserv_oem_force.c lanserv_config.c config.c serv.c serial_ipmi.c \
-	persist.c extcmd.c
+	persist.c extcmd.c ipmb_ipmi.c
 libIPMIlanserv_la_LIBADD = $(OPENSSLLIBS) -ldl $(RT_LIB)
 libIPMIlanserv_la_LDFLAGS = -version-info $(LD_VERSION) \
 	../utils/libOpenIPMIutils.la
diff --git a/lanserv/OpenIPMI/Makefile.am b/lanserv/OpenIPMI/Makefile.am
index ab1e514..7c17c10 100644
--- a/lanserv/OpenIPMI/Makefile.am
+++ b/lanserv/OpenIPMI/Makefile.am
@@ -1,3 +1,3 @@
 
 pkginclude_HEADERS = lanserv.h serserv.h serv.h extcmd.h persist.h msg.h \
-	mcserv.h
+	mcserv.h ipmbserv.h
diff --git a/lanserv/OpenIPMI/ipmbserv.h b/lanserv/OpenIPMI/ipmbserv.h
new file mode 100644
index 0000000..06ee342
--- /dev/null
+++ b/lanserv/OpenIPMI/ipmbserv.h
@@ -0,0 +1,83 @@
+/*
+ * ipmbserv.h
+ *
+ * IPMB server include file
+ *
+ * Copyright 2019 Mellanox
+ *
+ * This software is available to you under a choice of one of two
+ * licenses.  You may choose to be licensed under the terms of the GNU
+ * Lesser General Public License (GPL) Version 2 or the modified BSD
+ * license below.  The following disclamer applies to both licenses:
+ *
+ *  THIS SOFTWARE IS PROVIDED ``AS IS'' AND ANY EXPRESS OR IMPLIED
+ *  WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
+ *  MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
+ *  IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT,
+ *  INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
+ *  BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS
+ *  OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
+ *  ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR
+ *  TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE
+ *  USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
+ *
+ * GNU Lesser General Public Licence
+ *
+ *  This program is free software; you can redistribute it and/or
+ *  modify it under the terms of the GNU Lesser General Public License
+ *  as published by the Free Software Foundation; either version 2 of
+ *  the License, or (at your option) any later version.
+ *
+ *  You should have received a copy of the GNU Lesser General Public
+ *  License along with this program; if not, write to the Free
+ *  Software Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
+ *
+ * Modified BSD Licence
+ *
+ * Redistribution and use in source and binary forms, with or without
+ * modification, are permitted provided that the following conditions
+ * are met:
+ *
+ *   1. Redistributions of source code must retain the above copyright
+ *      notice, this list of conditions and the following disclaimer.
+ *   2. Redistributions in binary form must reproduce the above
+ *      copyright notice, this list of conditions and the following
+ *      disclaimer in the documentation and/or other materials provided
+ *      with the distribution.
+ *   3. The name of the author may not be used to endorse or promote
+ *      products derived from this software without specific prior
+ *      written permission.
+ */
+
+#ifndef __IPMBSERV_H
+#define __IPMBSERV_H
+
+#include <OpenIPMI/serv.h>
+#include <OpenIPMI/os_handler.h>
+
+typedef struct ipmbserv_data_s ipmbserv_data_t;
+
+struct ipmbserv_data_s {
+    lan_addr_t addr;
+
+    channel_t channel;
+
+    os_handler_t *os_hnd;
+
+    sys_data_t *sysinfo;
+
+    void *user_info;
+
+    int fd;
+
+    void (*send_out)(ipmbserv_data_t *si, unsigned char *data,
+		     unsigned int data_len);
+
+    char *ipmbdev;
+};
+
+int ipmbserv_read_config(char **tokptr, sys_data_t *sys, const char **errstr);
+int ipmbserv_init(ipmbserv_data_t *ipmb);
+void ipmbserv_handle_data(ipmbserv_data_t *ipmb, uint8_t *imsg, unsigned int len);
+
+#endif /* __IPMBSERV_H */
diff --git a/lanserv/OpenIPMI/serv.h b/lanserv/OpenIPMI/serv.h
index d2087f5..6bcfc35 100644
--- a/lanserv/OpenIPMI/serv.h
+++ b/lanserv/OpenIPMI/serv.h
@@ -219,6 +219,9 @@ struct channel_s
      */
     int (*oem_intf_recv_handler)(channel_t *chan, msg_t *msg,
 				 unsigned char *rdata, unsigned int *rdata_len);
+
+    /* Set to 1 if ipmb channel 0 is listed in the config file, 0 otherwise */
+    int prim_ipmb_in_cfg_file;
 };
 
 struct user_s
@@ -408,6 +411,7 @@ struct sys_data_s {
     void (*cfree)(channel_t *chan, void *data);
     int (*lan_channel_init)(void *info, channel_t *chan);
     int (*ser_channel_init)(void *info, channel_t *chan);
+    int (*ipmb_channel_init)(void *info, channel_t *chan);
 };
 
 static inline void
diff --git a/lanserv/README.design b/lanserv/README.design
index 2f897c4..5260a6c 100644
--- a/lanserv/README.design
+++ b/lanserv/README.design
@@ -31,6 +31,8 @@ msg.h - This defines an IPMI message that is passed around, and a few
 
 serserv.h - The configuration of a serial interface.
 
+ipmbserv.h - The configuration of an IPMB interface.
+
 serv.h - This defines data structures used by the whole system.
 
 
@@ -77,6 +79,8 @@ emu.h - Defines the interface between bmc_xxx.c and emu_cmd.c
 extcmd.c - Code for running the external command for dealing with LAN
 	configuration.
 
+ipmb_ipmi.c - An implementation of the IPMB protocol.
+
 ipmi_sim.c - The main file for the ipmi_sim program.
 
 lanserv_asf.c - Handles LAN ASF commands.
@@ -179,4 +183,4 @@ It is called from config.c to handle sol-specific configuration.
 It installs a hook into lanserv_ipmi.c to receive the SOL payload and
 send the SOL payload.
 
-It ties into bmc.c to handle SOL-specific commands.
\ No newline at end of file
+It ties into bmc.c to handle SOL-specific commands.
diff --git a/lanserv/bmc.c b/lanserv/bmc.c
index 93d0b3f..264b4ae 100644
--- a/lanserv/bmc.c
+++ b/lanserv/bmc.c
@@ -613,6 +613,9 @@ ipmi_mc_enable(lmc_data_t *mc)
 	    err = sys->lan_channel_init(sys->info, chan);
 	else if (chan->medium_type == IPMI_CHANNEL_MEDIUM_RS232)
 	    err = sys->ser_channel_init(sys->info, chan);
+	else if ((chan->medium_type == IPMI_CHANNEL_MEDIUM_IPMB) &&
+		((chan->channel_num != 0) || (chan->prim_ipmb_in_cfg_file)))
+	    err = sys->ipmb_channel_init(sys->info, chan);
 	else 
 	    chan_init(chan);
 	if (err) {
@@ -802,6 +805,7 @@ ipmi_mc_alloc_unconfigured(sys_data_t *sys, unsigned char ipmb,
     mc->ipmb_channel.protocol_type = IPMI_CHANNEL_PROTOCOL_IPMB;
     mc->ipmb_channel.session_support = IPMI_CHANNEL_SESSION_LESS;
     mc->ipmb_channel.active_sessions = 0;
+    mc->ipmb_channel.prim_ipmb_in_cfg_file = 0;
     mc->channels[0] = &mc->ipmb_channel;
     mc->channels[0]->log = sys->clog;
 
diff --git a/lanserv/config.c b/lanserv/config.c
index f0dda9f..783ccf3 100644
--- a/lanserv/config.c
+++ b/lanserv/config.c
@@ -64,6 +64,7 @@
 #include <OpenIPMI/serv.h>
 #include <OpenIPMI/lanserv.h>
 #include <OpenIPMI/serserv.h>
+#include <OpenIPMI/ipmbserv.h>
 #include <OpenIPMI/persist.h>
 
 void
@@ -829,6 +830,8 @@ read_config(sys_data_t *sys,
 	    }
 	} else if (strcmp(tok, "user") == 0) {
 	    err = get_user(&tokptr, sys, &errstr);
+	} else if (strcmp(tok, "ipmb") == 0) {
+	    err = ipmbserv_read_config(&tokptr, sys, &errstr);
 	} else if (strcmp(tok, "serial") == 0) {
 	    err = serserv_read_config(&tokptr, sys, &errstr);
 	} else if (strcmp(tok, "sol") == 0) {
diff --git a/lanserv/ipmb_ipmi.c b/lanserv/ipmb_ipmi.c
new file mode 100644
index 0000000..d98b3cc
--- /dev/null
+++ b/lanserv/ipmb_ipmi.c
@@ -0,0 +1,219 @@
+/*
+ * ipmb_ipmi.c
+ *
+ * IPMB server interface.
+ *
+ * Copyright 2019 Mellanox
+ *
+ * This software is available to you under a choice of one of two
+ * licenses.  You may choose to be licensed under the terms of the GNU
+ * Lesser General Public License (GPL) Version 2 or the modified BSD
+ * license below.  The following disclamer applies to both licenses:
+ *
+ *  THIS SOFTWARE IS PROVIDED ``AS IS'' AND ANY EXPRESS OR IMPLIED
+ *  WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
+ *  MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
+ *  IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT,
+ *  INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
+ *  BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS
+ *  OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
+ *  ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR
+ *  TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE
+ *  USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
+ *
+ * GNU Lesser General Public Licence
+ *
+ *  This program is free software; you can redistribute it and/or
+ *  modify it under the terms of the GNU Lesser General Public License
+ *  as published by the Free Software Foundation; either version 2 of
+ *  the License, or (at your option) any later version.
+ *
+ *  You should have received a copy of the GNU Lesser General Public
+ *  License along with this program; if not, write to the Free
+ *  Software Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
+ *
+ * Modified BSD Licence
+ *
+ * Redistribution and use in source and binary forms, with or without
+ * modification, are permitted provided that the following conditions
+ * are met:
+ *
+ *   1. Redistributions of source code must retain the above copyright
+ *      notice, this list of conditions and the following disclaimer.
+ *   2. Redistributions in binary form must reproduce the above
+ *      copyright notice, this list of conditions and the following
+ *      disclaimer in the documentation and/or other materials provided
+ *      with the distribution.
+ *   3. The name of the author may not be used to endorse or promote
+ *      products derived from this software without specific prior
+ *      written permission.
+ */
+
+#include <string.h>
+#include <stdlib.h>
+#include <OpenIPMI/serv.h>
+#include <OpenIPMI/ipmbserv.h>
+#include <OpenIPMI/ipmi_mc.h>
+
+#define	IPMIDEV_MAX_SIZE	15
+
+static void
+ipmb_send(msg_t *imsg, ipmbserv_data_t *ipmb)
+{
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
+    if (ipmb->sysinfo->debug & DEBUG_RAW_MSG)
+	debug_log_raw_msg(ipmb->sysinfo, msg, msg_len, "Raw ipmb send:");
+    ipmb->send_out(ipmb, msg, msg_len);
+}
+
+static void
+ipmb_return_rsp(channel_t *chan, msg_t *imsg, rsp_msg_t *rsp)
+{
+    ipmbserv_data_t *ipmb = chan->chan_info;
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
+    ipmb_send(&msg, ipmb);
+}
+
+int
+ipmbserv_init(ipmbserv_data_t *ipmb)
+{
+    ipmb->channel.return_rsp = ipmb_return_rsp;
+    chan_init(&ipmb->channel);
+
+    return 0;
+}
+
+void
+ipmbserv_handle_data(ipmbserv_data_t *ipmb, uint8_t *imsg, unsigned int len)
+{
+    msg_t msg;
+
+    if (len < 8) {
+	fprintf(stderr, "Message too short\n");
+	return;
+    }
+    /* subtract len field and checksum */
+    len--;
+    imsg++;
+
+    if (ipmb_checksum(imsg, len, 0) != 0) {
+	fprintf(stderr, "Message checksum failure\n");
+	return;
+    }
+    len--;
+
+    memset(&msg, 0, sizeof(msg));
+
+    msg.rs_addr = imsg[0];
+    msg.netfn = imsg[1] >> 2;
+    msg.rs_lun = imsg[1] & 3;
+    /* imsg[2] is first checksum */
+    msg.rq_addr = imsg[3];
+    msg.rq_seq = imsg[4] >> 2;
+    msg.rq_lun = imsg[4] & 3;
+    msg.cmd = imsg[5];
+
+    msg.len = len - 6;
+    msg.data = imsg + 6;
+
+    msg.src_addr = NULL;
+    msg.src_len = 0;
+
+    channel_smi_send(&ipmb->channel, &msg);
+}
+
+int
+ipmbserv_read_config(char **tokptr, sys_data_t *sys, const char **errstr)
+{
+    ipmbserv_data_t *ipmb;
+    unsigned int chan_num;
+    int err;
+    const char *tok;
+    char *ipmbdev;
+
+    err = get_uint(tokptr, &chan_num, errstr);
+    if (err)
+	return -1;
+
+    if (chan_num >= IPMI_MAX_CHANNELS) {
+	*errstr = "Invalid channel number, must be 0-15";
+	return -1;
+    }
+
+    /*
+     * Allow an IPMB channel to override the default channel 0.
+     */
+    if (chan_num != 0 && sys->chan_set[chan_num]) {
+	    *errstr = "Channel already in use";
+	    return -1;
+    }
+
+    tok = mystrtok(NULL, " \t\n", tokptr);
+    if (!tok || strcmp(tok, "ipmb_dev_int")) {
+	*errstr = "Config file missing <linux ipmb driver name>";
+	return -1;
+    }
+
+    tok = mystrtok(NULL, " \t\n", tokptr);
+    if (strlen(tok) > IPMIDEV_MAX_SIZE) {
+	*errstr = "Length of device file name %s > 15";
+	return -1;
+    }
+    ipmbdev = strdup(tok);
+    if (!ipmbdev) {
+	*errstr = "Unable to alloc device file name";
+	return -1;
+    }
+
+    ipmb = malloc(sizeof(*ipmb));
+    if (!ipmb) {
+	free(ipmbdev);
+	*errstr = "Out of memory";
+	return -1;
+    }
+    memset(ipmb, 0, sizeof(*ipmb));
+    ipmb->ipmbdev = ipmbdev;
+
+    ipmb->channel.session_support = IPMI_CHANNEL_SESSION_LESS;
+    ipmb->channel.medium_type = IPMI_CHANNEL_MEDIUM_IPMB;
+    ipmb->channel.protocol_type = IPMI_CHANNEL_PROTOCOL_IPMB;
+
+    ipmb->channel.channel_num = chan_num;
+
+    ipmb->sysinfo = sys;
+    ipmb->channel.chan_info = ipmb;
+
+    if (chan_num == 0)
+	ipmb->channel.prim_ipmb_in_cfg_file = 1;
+    else
+	ipmb->channel.prim_ipmb_in_cfg_file = 0;
+
+    sys->chan_set[chan_num] = &ipmb->channel;
+
+    return 0;
+}
diff --git a/lanserv/ipmi_sim.c b/lanserv/ipmi_sim.c
index c4e5b18..300dbed 100644
--- a/lanserv/ipmi_sim.c
+++ b/lanserv/ipmi_sim.c
@@ -90,6 +90,7 @@
 #include <OpenIPMI/serv.h>
 #include <OpenIPMI/lanserv.h>
 #include <OpenIPMI/serserv.h>
+#include <OpenIPMI/ipmbserv.h>
 
 #include "emu.h"
 #include <OpenIPMI/persist.h>
@@ -567,6 +568,100 @@ ser_channel_init(void *info, channel_t *chan)
     return err;
 }
 
+static int
+ipmb_open(char *ipmi_dev)
+{
+    int ipmi_fd;
+
+    if (!ipmi_dev) {
+	fprintf(stderr, "ipmi_dev is not specified\n");
+	return -1;
+    }
+
+    ipmi_fd = open(ipmi_dev, O_RDWR);
+    if (ipmi_fd == -1)
+        fprintf(stderr, "Could not open ipmi device\n");
+
+    return ipmi_fd;
+}
+
+static void
+ipmb_data_ready(int fd, void *cb_data, os_hnd_fd_id_t *id)
+{
+    ipmbserv_data_t *ipmb = cb_data;
+    unsigned int  len;
+    unsigned char msgd[256];
+
+    len = read(fd, msgd, sizeof(msgd));
+
+    if (ipmb->sysinfo->debug & DEBUG_MSG)
+        printf(">ipmb_data_ready size %d\n", len);
+    if (len <= 0) {
+        if ((len < 0) && (errno == EINTR))
+            return;
+
+        ipmb->os_hnd->remove_fd_to_wait_for(ipmb->os_hnd, id);
+        close(fd);
+        ipmb->fd = -1;
+        return;
+    }
+
+    ipmbserv_handle_data(ipmb, msgd, len);
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
+}
+
+static int
+ipmb_channel_init(void *info, channel_t *chan)
+{
+    misc_data_t *data = info;
+    ipmbserv_data_t *ipmb = chan->chan_info;
+    int err;
+    os_hnd_fd_id_t *fd_id;
+
+    ipmb->os_hnd = data->os_hnd;
+    ipmb->user_info = data;
+    ipmb->send_out = ipmb_send;
+
+    err = ipmbserv_init(ipmb);
+    if (err) {
+        fprintf(stderr, "Unable to init ipmb: 0x%x\n", err);
+        exit(1);
+    }
+
+    ipmb->fd = ipmb_open(ipmb->ipmbdev);
+    if (ipmb->fd == -1){
+        fprintf(stderr, "Unable to open ipmi device file: 0x%x\n", err);
+        exit(1);
+    }
+
+    err = data->os_hnd->add_fd_to_wait_for(data->os_hnd, ipmb->fd,
+                                            ipmb_data_ready, ipmb,
+                                            NULL, &fd_id);
+    if (err) {
+	close(ipmb->fd);
+	ipmb->fd = -1;
+	fprintf(stderr, "Unable to open ipmi device file: 0x%x\n", err);
+	exit(1);
+    }
+
+    isim_add_fd(ipmb->fd);
+    return 0;
+}
+
 static void
 isim_log(sys_data_t *sys, int logtype, msg_t *msg, const char *format,
 	 va_list ap, int len)
@@ -1438,6 +1533,7 @@ main(int argc, const char *argv[])
     sysinfo.cfree = ifree;
     sysinfo.lan_channel_init = lan_channel_init;
     sysinfo.ser_channel_init = ser_channel_init;
+    sysinfo.ipmb_channel_init = ipmb_channel_init;
     data.sys = &sysinfo;
 
     err = pipe(sigpipeh);
diff --git a/lanserv/lan.conf b/lanserv/lan.conf
index 37732d4..cec7ebb 100644
--- a/lanserv/lan.conf
+++ b/lanserv/lan.conf
@@ -126,3 +126,16 @@ set_working_mc 0x30
 # where initstr is the init string passed on the module load line.
 # It should return 0 on success or an errno no failure.
 #loadlib "/opt/lib/ipmi_sim_extend.so" "Initialization String"
+
+# "ipmb" should be added to the config file of a device
+# that needs to handle an IPMB request and generate a response
+# back to the requester.
+# In the case of an IPMB bridge request for example, the
+# BMC is considered the requester and the responder device
+# should have a config file defining the IPMB channel number.
+# For example:
+# ipmb <channel number> <linux ipmb driver name> <device file>
+# ipmb 2 ipmb_dev_int /dev/ipmb-2
+#
+# At the moment, this OpenIPMI ipmb interface works with the
+# linux driver ipmb_dev_int.c.
-- 
2.1.2



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
