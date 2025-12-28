Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ECABFCE579D
	for <lists+openipmi-developer@lfdr.de>; Sun, 28 Dec 2025 22:38:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:MIME-Version:Sender:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=de7bRxSqZVsTtboMa8BZWoe3Jvu+cqRIDPrBPVrBr3E=; b=e3GtEpju9mznhnJrFKWLFaryYg
	8MCw2ULTvtEz+hJFiczcC9pN4+EWFNsNyxhWG4CN10hY/2N06x3vr9ON4LJbt3ys8bXe54+ZQFh0K
	K7VG8qUVtVVjtNM5SZbUVwUlx+9+tXPw/7eDQCbqbp3xhcPvWz/MgN10JiHjs5TOLp2w=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vZyT1-0006sw-Co;
	Sun, 28 Dec 2025 21:38:23 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <michallinuxstuff@gmail.com>) id 1vZyT0-0006so-5H
 for openipmi-developer@lists.sourceforge.net;
 Sun, 28 Dec 2025 21:38:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sCV1yx6IDJ8WiN+KkH78mORpP+eg+Sgq1oaLpV/Cp74=; b=ERySCHEV3EGolJoJzf0HOYkRpF
 HMO/iw6dLMHmKgIIZoIWhEeoXoeGGuBKidDAIdEIZ+XiccJv4USuJ10akobW2k1nB87LW+TA0R7ah
 9TamcY7XnBkshKnQh8UpLFNUhv1EjKO2/kBNgJdRGjuceTB0rnDUziaJ8lkNDZtUb/2Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=sCV1yx6IDJ8WiN+KkH78mORpP+eg+Sgq1oaLpV/Cp74=; b=g
 n+FPnNE2dPdh/KidzUQ+wz3cK8XcpX9ysQZ9llKn+vF6WFCFmxvF7obww8SU93APXTvE4Xajyr474
 LkAHUyBidWK+Hk6jirsfpo2atd4h05v/51vsPPA+Hia3C17RkdT5WjUBFudk1SBbSLvvd1bdjAqQa
 odFAqgwe7yel34o8=;
Received: from mail-ed1-f43.google.com ([209.85.208.43])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vZySz-0001k9-KR for openipmi-developer@lists.sourceforge.net;
 Sun, 28 Dec 2025 21:38:22 +0000
Received: by mail-ed1-f43.google.com with SMTP id
 4fb4d7f45d1cf-64e48264e56so2522386a12.1
 for <openipmi-developer@lists.sourceforge.net>;
 Sun, 28 Dec 2025 13:38:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1766957895; x=1767562695; darn=lists.sourceforge.net;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=sCV1yx6IDJ8WiN+KkH78mORpP+eg+Sgq1oaLpV/Cp74=;
 b=XKZ2HUZ+HUWcd/Yw/BfWp2mlt9Zbj4sHIZ3/q/XCLUqvzR567U/Aavt21GVOf4INid
 oMm5ApDUoRM65gJWv8qDbetkpcDKYpDJI+9Ho5Mg3cLtMaSp35Vu2egkhwxeambel+er
 Ng3YnlrUdAL307C7PRlZxjuA6qJjJ/eEk3BUnyhGWMaoHkaVxeZYkwG2BYc8itko/iic
 udJoFgPLgVxmGrsGa2LiTSQ8K1KKyO5HYjiJHsOHVgALO4L9lKd2J4xbgvq43IOx6v9Z
 nXDeWBSO3tGcmgr+gxOclVjc0G+bZu6/QJz1ocSQeqdNd9AAfnvFXL8f4q9ijv9TiiSv
 tlWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1766957895; x=1767562695;
 h=to:subject:message-id:date:from:mime-version:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=sCV1yx6IDJ8WiN+KkH78mORpP+eg+Sgq1oaLpV/Cp74=;
 b=lPmUdNh3b/LQtFjvM+dEOMkp6pcNsU6cKLNVeLSOHls1o0S1ecicVk7+7pyDY6VsXM
 mF72U33nnkitvFnQ6BD73UU/uQwN+rkuNYTBD5+vHQsoOBFRcEHMCEp3woWLdW0IXr0l
 uknY5vSHvuQpOdQphoob0+bz+RFpqIPZfAv428gnMnxZ66yClIh/R2kx2c3x5VbWOb37
 5/+8YxKOLdfk+STJWE5tPQIhhcRo7oR34mkvSJrLyIs/X+gI79J1a6tO2OEKDt3dh3Y0
 FUUti4c+n2/yixrIbUb68soLeNmyxDq/wiI02SpPh5lmBf50Iu3PZhLgSztSXhr5i5kh
 kidw==
X-Gm-Message-State: AOJu0YwGy551w4LHqouqyDqlkSroJGVq99EJbFml2+syKugosoOxWo05
 7WWSCOu7z4/MawH0YOn4JzjP64U4WA5ik+qXJWY9sPAgEM3MUnqTwVTM0JCAGQnjw5WLqWMUb5B
 42GV9qOylcir6gUZ02btAtovpIMDy5RsThrmHoYoNnQ==
X-Gm-Gg: AY/fxX4Q7saqtxLdfAjw37E0JaK3B0b+UZT8OunMLGLEXAy1Teh5QmV5DWnCY8y9fDa
 lNzSlSuAppyGPnwo7nIlZcWaEeX1UvQcV8O7AWGOWetrQjvKwIRke9ux2V6E7J1X+eJR+8ALIbJ
 krPzHqwT/a629dEXnTx9rI4v97VjmOipyZnhrbXlC6HxsSTKOlxw/Nn+nWENcW53W/nWIk2RnZV
 jhUlduMkCGnzt2UqboJ19Y4MLn8XkBAmlwX8Ieh4IfKr+8WCvn7vYf9OlTS5EOIFivzsQ==
X-Google-Smtp-Source: AGHT+IF7Q0pVjm2OptiC8VYxNcY0JJMX1nbBxKRiuNTXfTpkPM+vN5j+zLOUPFlOjZb4InH64FiesQjHkCGV3S2wDSc=
X-Received: by 2002:a17:907:1b0f:b0:b73:42df:29a with SMTP id
 a640c23a62f3a-b8037253c2emr2636983266b.59.1766957894734; Sun, 28 Dec 2025
 13:38:14 -0800 (PST)
MIME-Version: 1.0
From: Michal Berger <michallinuxstuff@gmail.com>
Date: Sun, 28 Dec 2025 22:38:03 +0100
X-Gm-Features: AQt7F2qpUKlH55h7qwQ8WetQa_6yQ48bWRa_N1mj-hECWiOpg8n7v4H8tw2GQhI
Message-ID: <CACosJgzCym0fGOh4_itgnV5Dk+vOqk=Xy+dtvbmCGcpKCFY5XA@mail.gmail.com>
To: openipmi-developer@lists.sourceforge.net
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Right now channel number is being unconditionally included
 in the Generator ID field. However, as per the SEL Event Records it should
 remain 0h depending on what medium/interface the event msg is rece [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [michallinuxstuff(at)gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.43 listed in wl.mailspike.net]
X-Headers-End: 1vZySz-0001k9-KR
Subject: [Openipmi-developer] [PATCH] lanserv/bmc_sensor: Adjust Generator ID
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Right now channel number is being unconditionally included in the
Generator ID field. However, as per the SEL Event Records it should
remain 0h depending on what medium/interface the event msg is
received over.

So have this:

# ipmitool sel list
 SEL has no entries
 # ipmitool event 1
 Sending SAMPLE event: Temperature - Upper Critical - Going High
 # ipmitool sel get 0x1 | grep "Generator ID"
  Generator ID          : 0041

Instead of:

 # ipmitool event 1
 Sending SAMPLE event: Temperature - Upper Critical - Going High
 # ipmitool sel get 0x2 | grep "Generator ID"
  Generator ID          : f041

As we are at it adjust the msg length of the platform event - as per the
Table 29-4, Platform Event (Event Message) Command, the 8 bytes is
a msg length dedicated for the System Interface which must include
the Generator ID. Case in point, when the event is sent over the
LAN channel, ipmi_sim rejects it due to invalid length of the
request (e.g. ipmitool does not include the extra software ID in the
event data hence sending only 7 bytes):

 $ ipmitool -Ilanplus -Hlocalhost -p4242 -UXXXXX -PXXXXX event 1
 Sending SAMPLE event: Temperature - Upper Critical - Going High
 Platform Event Message command failed: Request data length invalid

Signed-off-by: Michal Berger <michallinuxstuff@gmail.com>
---
lanserv/bmc_sensor.c | 22 +++++++++++++++++++++-
1 file changed, 21 insertions(+), 1 deletion(-)

diff --git a/lanserv/bmc_sensor.c b/lanserv/bmc_sensor.c
index be6c537f..cc21bf9c 100644
--- a/lanserv/bmc_sensor.c
+++ b/lanserv/bmc_sensor.c
@@ -58,6 +58,7 @@
#include <sys/stat.h>
#include <fcntl.h>

+#include <OpenIPMI/ipmi_mc.h>
#include <OpenIPMI/ipmi_err.h>
#include <OpenIPMI/ipmi_msgbits.h>
#include <OpenIPMI/ipmi_bits.h>
@@ -113,16 +114,35 @@ handle_platform_event(lmc_data_t    *mc,
                     void          *cb_data)
{
    unsigned char sel_data[13];
+    uint8_t msg_length = 7; // IPMB MESSAGING

-    if (check_msg_length(msg, 8, rdata, rdata_len))
+    if (msg->orig_channel->channel_num == 15 ||
+               msg->orig_channel->medium_type == IPMI_CHANNEL_MEDIUM_SYS_INTF)
+       msg_length = 8; // SYSTEM INTERFACE MESSAGING
+
+    if (check_msg_length(msg, msg_length, rdata, rdata_len))
       return;

    sel_data[0] = 0;
    sel_data[1] = 0;
    sel_data[2] = 0;
    sel_data[3] = 0;
+    /*
+       From Table 32-1, SEL Event Records:
+         Byte 1
+           [7:1] - 7-bit I2C . Slave Address, or 7-bit system software ID
+           [0] 0b = ID is IPMB Slave Address
+               1b = system software ID
+         Byte 2
+          [7:4] - Channel number. Channel that event message was
received over. 0h if the
+                  event message was received via the system
interface, primary IPMB, or
+                  internally generated by the BMC.
+    */
    sel_data[4] = msg->data[0];
    sel_data[5] = msg->orig_channel->channel_num << 4;
+    if (msg->orig_channel->channel_num == 15 ||
+               msg->orig_channel->medium_type == IPMI_CHANNEL_MEDIUM_SYS_INTF)
+       sel_data[5] = 0;
    sel_data[6] = msg->data[1];
    sel_data[7] = msg->data[2];
    sel_data[8] = msg->data[3];
--
2.43.0


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
