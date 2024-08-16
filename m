Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9797195490F
	for <lists+openipmi-developer@lfdr.de>; Fri, 16 Aug 2024 14:46:21 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1sewLK-00080r-Pd;
	Fri, 16 Aug 2024 12:46:11 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <iivanov@suse.de>) id 1seqpq-0001oo-TM
 for openipmi-developer@lists.sourceforge.net;
 Fri, 16 Aug 2024 06:53:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oX3/jIN/2itdKhrK17EryBHW5e7SEAyJKPs7KRVgPkE=; b=XUeomhcYtq2QlFciO9o1FGVhLa
 uICIUgVAHCJYB0V77Skhbe7qqPmaqlP6JSOXlgAzWtblFmEfStIW9iVAvPCjKb5lnlP5SWAYnbUg/
 os819BElB+AShFRTKbbcZEVrEwL/2pSWJoafA3yG4So4T3iOkRPxSi7KuZQeGS0jIs1U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=oX3/jIN/2itdKhrK17EryBHW5e7SEAyJKPs7KRVgPkE=; b=l
 6jJOg9EUrflC67MykukimWhy6XoUihsSTiZN6rQ71oCqN3Es60wEvgKf0Dkk3x9aczf2scLI3PEJT
 +H0Uxzkp9EXfkZaSRyVopEJZZGPQjGTXxW9tptGAkwThajomQJoDMft+T2X4pTEnjABWHVcFbQcR1
 noJGRiEQn03ILk1Y=;
Received: from smtp-out2.suse.de ([195.135.223.131])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1seqpp-0005pH-8h for openipmi-developer@lists.sourceforge.net;
 Fri, 16 Aug 2024 06:53:18 +0000
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id 85C4F1FDC9;
 Fri, 16 Aug 2024 06:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1723791185; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version: content-transfer-encoding:content-transfer-encoding;
 bh=oX3/jIN/2itdKhrK17EryBHW5e7SEAyJKPs7KRVgPkE=;
 b=ZyZFrRYea79HpBJG6P1GzcF64cs3DnHs/LfuYt1flHjr22jgHmHYBstif1X/a6AqyDF+cm
 H27eqp+wzUumQnR+BqU27ObY+Qg3qfgr6SLRCpMbysUvvtSJodiMhGHgrthHrs8jXDJBY5
 5P2k97kUYI3w8SH9txMjH6m04UwTYkc=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1723791185;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version: content-transfer-encoding:content-transfer-encoding;
 bh=oX3/jIN/2itdKhrK17EryBHW5e7SEAyJKPs7KRVgPkE=;
 b=oHHdvgze/8+LrUNTkY2WLyxW2h1dnjU34GiwW1dY3AfEjIhFTYQmLfoO6Xw/jbDZzdx5QO
 +8AMyhIbrjVXerCQ==
Authentication-Results: smtp-out2.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1723791185; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version: content-transfer-encoding:content-transfer-encoding;
 bh=oX3/jIN/2itdKhrK17EryBHW5e7SEAyJKPs7KRVgPkE=;
 b=ZyZFrRYea79HpBJG6P1GzcF64cs3DnHs/LfuYt1flHjr22jgHmHYBstif1X/a6AqyDF+cm
 H27eqp+wzUumQnR+BqU27ObY+Qg3qfgr6SLRCpMbysUvvtSJodiMhGHgrthHrs8jXDJBY5
 5P2k97kUYI3w8SH9txMjH6m04UwTYkc=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1723791185;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version: content-transfer-encoding:content-transfer-encoding;
 bh=oX3/jIN/2itdKhrK17EryBHW5e7SEAyJKPs7KRVgPkE=;
 b=oHHdvgze/8+LrUNTkY2WLyxW2h1dnjU34GiwW1dY3AfEjIhFTYQmLfoO6Xw/jbDZzdx5QO
 +8AMyhIbrjVXerCQ==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 7588513A2F;
 Fri, 16 Aug 2024 06:53:05 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id qBIzHFH3vmbDfgAAD6G6ig
 (envelope-from <iivanov@suse.de>); Fri, 16 Aug 2024 06:53:05 +0000
From: "Ivan T. Ivanov" <iivanov@suse.de>
To: minyard@acm.org
Date: Fri, 16 Aug 2024 09:54:58 +0300
Message-ID: <20240816065458.117986-1-iivanov@suse.de>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Spam-Score: -2.80
X-Spam-Flag: NO
X-Spamd-Result: default: False [-2.80 / 50.00]; BAYES_HAM(-3.00)[100.00%];
 MID_CONTAINS_FROM(1.00)[]; NEURAL_HAM_LONG(-1.00)[-1.000];
 R_MISSING_CHARSET(0.50)[]; NEURAL_HAM_SHORT(-0.20)[-1.000];
 MIME_GOOD(-0.10)[text/plain]; FUZZY_BLOCKED(0.00)[rspamd.com];
 MIME_TRACE(0.00)[0:+]; TO_MATCH_ENVRCPT_ALL(0.00)[];
 ARC_NA(0.00)[];
 DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
 RCVD_TLS_ALL(0.00)[]; RCPT_COUNT_THREE(0.00)[4];
 FROM_HAS_DN(0.00)[]; TO_DN_SOME(0.00)[];
 FROM_EQ_ENVFROM(0.00)[]; RCVD_VIA_SMTP_AUTH(0.00)[];
 RCVD_COUNT_TWO(0.00)[2];
 DBL_BLOCKED_OPENRESOLVER(0.00)[suse.de:mid, suse.de:email,
 imap1.dmz-prg2.suse.org:helo]
X-Spam-Level: 
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: It is pointless to continue module probing when communication
 with device is failing. This just fill logs with misleading messages like
 this: [Fri Jul 26 18:32:34 2024] ipmi_ssif i2c-IPI0001:00: ipmi_ssif: Error
 fetching SSIF: -121 180453376 62, your system probably doesn't support this
 command so using defaults [Fri Jul 26 18:32:54 2024] i [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: suse.de]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [195.135.223.131 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [195.135.223.131 listed in sa-accredit.habeas.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [195.135.223.131 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1seqpp-0005pH-8h
X-Mailman-Approved-At: Fri, 16 Aug 2024 12:46:08 +0000
Subject: [Openipmi-developer] [PATCH] ipmi:ssif: Exit early when there is a
 SMBus error
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
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 "Ivan T. Ivanov" <iivanov@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

It is pointless to continue module probing when communication
with device is failing. This just fill logs with misleading
messages like this:

[Fri Jul 26 18:32:34 2024] ipmi_ssif i2c-IPI0001:00: ipmi_ssif: Error fetching SSIF: -121 180453376 62, your system probably doesn't support this command so using defaults
[Fri Jul 26 18:32:54 2024] ipmi_ssif i2c-IPI0001:00: ipmi_ssif: Unable to clear message flags: -121 180453376 62
[Fri Jul 26 18:33:14 2024] ipmi_ssif i2c-IPI0001:00: ipmi_ssif: Error getting global enables: -121 180453376 62
[Fri Jul 26 18:33:49 2024] ipmi_ssif i2c-IPI0001:00: IPMI message handler: device id demangle failed: -22
[Fri Jul 26 18:33:50 2024] ipmi_ssif i2c-IPI0001:00: IPMI message handler: BMC returned 0xff, retry get bmc device id
[Fri Jul 26 18:34:07 2024] ipmi_ssif i2c-IPI0001:00: IPMI message handler: device id demangle failed: -22
[Fri Jul 26 18:34:07 2024] ipmi_ssif i2c-IPI0001:00: IPMI message handler: BMC returned 0xff, retry get bmc device id
[Fri Jul 26 18:34:25 2024] ipmi_ssif i2c-IPI0001:00: IPMI message handler: device id demangle failed: -22
[Fri Jul 26 18:34:25 2024] ipmi_ssif i2c-IPI0001:00: IPMI message handler: BMC returned 0xff, retry get bmc device id
[Fri Jul 26 18:34:43 2024] ipmi_ssif i2c-IPI0001:00: IPMI message handler: device id demangle failed: -22
[Fri Jul 26 18:34:43 2024] ipmi_ssif i2c-IPI0001:00: IPMI message handler: BMC returned 0xff, retry get bmc device id
[Fri Jul 26 18:35:01 2024] ipmi_ssif i2c-IPI0001:00: IPMI message handler: device id demangle failed: -22
[Fri Jul 26 18:35:01 2024] ipmi_ssif i2c-IPI0001:00: IPMI message handler: BMC returned 0xff, retry get bmc device id
[Fri Jul 26 18:35:19 2024] ipmi_ssif i2c-IPI0001:00: IPMI message handler: device id demangle failed: -22
[Fri Jul 26 18:35:19 2024] ipmi_ssif i2c-IPI0001:00: IPMI message handler: Unable to get the device id: -5
[Fri Jul 26 18:35:19 2024] ipmi_ssif i2c-IPI0001:00: ipmi_ssif: Unable to register device: error -5
[Fri Jul 26 18:35:19 2024] ipmi_ssif i2c-IPI0001:00: ipmi_ssif: Unable to start IPMI SSIF: -5
[Fri Jul 26 18:35:19 2024] ipmi_ssif: probe of i2c-IPI0001:00 failed with error -5

Also in some of these prints uninitialized variables are used.
So just exit early when communication with device is flawed.

Signed-off-by: Ivan T. Ivanov <iivanov@suse.de>
---
 drivers/char/ipmi/ipmi_ssif.c | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/drivers/char/ipmi/ipmi_ssif.c b/drivers/char/ipmi/ipmi_ssif.c
index 96ad571d041a..37516733e5c8 100644
--- a/drivers/char/ipmi/ipmi_ssif.c
+++ b/drivers/char/ipmi/ipmi_ssif.c
@@ -1315,6 +1315,16 @@ static int read_response(struct i2c_client *client, unsigned char *resp)
 	return ret;
 }
 
+/* Filter SMBus communication errors from incorrect response errors */
+static bool is_smbus_error(struct device *dev, int err)
+{
+	if (!err || err == -EINVAL || err == -E2BIG)
+		return false;
+
+	dev_err(dev, "SMbus error: %d\n", err);
+	return true;
+}
+
 static int do_cmd(struct i2c_client *client, int len, unsigned char *msg,
 		  int *resp_len, unsigned char *resp)
 {
@@ -1709,6 +1719,8 @@ static int ssif_probe(struct i2c_client *client)
 	msg[1] = IPMI_GET_SYSTEM_INTERFACE_CAPABILITIES_CMD;
 	msg[2] = 0; /* SSIF */
 	rv = do_cmd(client, 3, msg, &len, resp);
+	if (is_smbus_error(&client->dev, rv))
+		goto out;
 	if (!rv && (len >= 3) && (resp[2] == 0)) {
 		if (len < 7) {
 			if (ssif_dbg_probe)
@@ -1767,6 +1779,8 @@ static int ssif_probe(struct i2c_client *client)
 	msg[1] = IPMI_CLEAR_MSG_FLAGS_CMD;
 	msg[2] = WDT_PRE_TIMEOUT_INT;
 	rv = do_cmd(client, 3, msg, &len, resp);
+	if (is_smbus_error(&client->dev, rv))
+		goto out;
 	if (rv || (len < 3) || (resp[2] != 0))
 		dev_warn(&ssif_info->client->dev,
 			 "Unable to clear message flags: %d %d %2.2x\n",
@@ -1776,6 +1790,8 @@ static int ssif_probe(struct i2c_client *client)
 	msg[0] = IPMI_NETFN_APP_REQUEST << 2;
 	msg[1] = IPMI_GET_BMC_GLOBAL_ENABLES_CMD;
 	rv = do_cmd(client, 2, msg, &len, resp);
+	if (is_smbus_error(&client->dev, rv))
+		goto out;
 	if (rv || (len < 4) || (resp[2] != 0)) {
 		dev_warn(&ssif_info->client->dev,
 			 "Error getting global enables: %d %d %2.2x\n",
@@ -1796,6 +1812,8 @@ static int ssif_probe(struct i2c_client *client)
 	msg[1] = IPMI_SET_BMC_GLOBAL_ENABLES_CMD;
 	msg[2] = ssif_info->global_enables | IPMI_BMC_EVT_MSG_BUFF;
 	rv = do_cmd(client, 3, msg, &len, resp);
+	if (is_smbus_error(&client->dev, rv))
+		goto out;
 	if (rv || (len < 2)) {
 		dev_warn(&ssif_info->client->dev,
 			 "Error setting global enables: %d %d %2.2x\n",
@@ -1818,6 +1836,8 @@ static int ssif_probe(struct i2c_client *client)
 	msg[1] = IPMI_SET_BMC_GLOBAL_ENABLES_CMD;
 	msg[2] = ssif_info->global_enables | IPMI_BMC_RCV_MSG_INTR;
 	rv = do_cmd(client, 3, msg, &len, resp);
+	if (is_smbus_error(&client->dev, rv))
+		goto out;
 	if (rv || (len < 2)) {
 		dev_warn(&ssif_info->client->dev,
 			 "Error setting global enables: %d %d %2.2x\n",
-- 
2.43.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
