Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6675BCD453E
	for <lists+openipmi-developer@lfdr.de>; Sun, 21 Dec 2025 20:57:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:
	From:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=uZRpinxJpX1fPUcqr9dPMsrkFkRekDZ5E7A6fh27v4o=; b=HRFdYXjPbDX3rFEKPzVpJU9tsD
	fmiDr5IwRHkoWzljkCQBKbd44gQvkyaWTWviZpMxnPBss+ZOSVPnQkEraSGL+iAdrW97qevMKYscA
	EhIB6DHg7q58zob8M4OBOLeMgtWgaalbzj9SvN+f5D/xEgeYY9mwpHpfE7z70w40oQvM=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vXPYK-0002iE-7R;
	Sun, 21 Dec 2025 19:57:16 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <michallinuxstuff@gmail.com>) id 1vXPXm-0002hO-Kk
 for openipmi-developer@lists.sourceforge.net;
 Sun, 21 Dec 2025 19:56:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xv8s5z1YjsXPzucnnn6vfohpuMPeLhmvdnTeRBov4Sc=; b=kKMozF4EB2pLxTfnlxhCSFi6D6
 B0xY/wjvCHAO+tfdTHXmoOZoxh2XRHJDG/cwG3teEq+Z5uScHiSv9sAJv/pn8eUIw6GvSaBjCM+Zb
 cLvpkPhakR6qsPZIlUWNBnI/21FMWq8vpUM47+JX/F7EGppRRZc76t93/Sh0IJ7Yvx10=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=xv8s5z1YjsXPzucnnn6vfohpuMPeLhmvdnTeRBov4Sc=; b=P
 t5+mHhosaGOSeRaecxv9t9tYdnrSNGERZ6OWce3UQy3gAu+qxySsRGMiIPk3xG7IHtzU8ziBNdoie
 zZPiTikdBG9eA1RhO95t1y2aO4jL7LlOG+khHsSDHOOhcnUdLkoZpGg5TOpkYu71naig88NxKv14b
 F3RYIjmwCYqyOjTI=;
Received: from mail-ej1-f46.google.com ([209.85.218.46])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vXPXm-0007jz-0q for openipmi-developer@lists.sourceforge.net;
 Sun, 21 Dec 2025 19:56:42 +0000
Received: by mail-ej1-f46.google.com with SMTP id
 a640c23a62f3a-b728a43e410so601780966b.1
 for <openipmi-developer@lists.sourceforge.net>;
 Sun, 21 Dec 2025 11:56:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1766346995; x=1766951795; darn=lists.sourceforge.net;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=xv8s5z1YjsXPzucnnn6vfohpuMPeLhmvdnTeRBov4Sc=;
 b=brbZoQU1yphCZSbZ2XQ3gM9sqYwKjC7s36+J8o41PoaXJAr35O0HPIALh0eVoCDiak
 DHAAYNyA6IwkeqOmn88XVGCD75f6kWGjqux3P+8UlylMXGZiuzUcZF7+4uwGsQ8vFu8P
 BSXEWTFXiHCO7L4OR/90cHSjUDrPABgR9DU1MUBxz8awaI/DogF9fBox6IRnochRr7oH
 1ENjUnF8QaPh/yrN42s6lLVmQ/LOb5Xiqgygenzxekl8P44JZ0+qyMAxcbjPtsjOAJgc
 ZqQrea0NAqpO7JPROJIRLTmo2+1hXJY1Ja4pj7+2yIfQJdjrU+1kFjCM2RAUHsa1JxXq
 /uWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1766346995; x=1766951795;
 h=to:subject:message-id:date:from:mime-version:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=xv8s5z1YjsXPzucnnn6vfohpuMPeLhmvdnTeRBov4Sc=;
 b=K5Zxc9NgyznlXm3ExlG6Slxjvjqi/Xv8WOinHSZSL7OvVEIgcd4ys+3X+qcIXzA2pT
 vhrOOXQNlo4pNHbhZxx+9IN5whJ56YOIxlCf+p5n25LMmhA2Upfe/jtaph3FzfZcajXq
 coPoJgzofG1r5Tme3UeSJpwGsgVe+lkKCe8052gkPcpN49q672b47NDCarZiDxozPQmW
 eXhqC4PlBLPwh/DKAzPgQcR3JrAcAWIx74CYa0zl+IMxujjdMeGJ4de0DWcUhYCaGK38
 fFYuJTefRPpZkOeeN2DTBWyLhBm/muVi9OiU9jZYw1IE1SsfI+L1oSIvp1Xs/fxwfhb2
 xNTg==
X-Gm-Message-State: AOJu0Yw9U2OINs37R0SCELOndDo+wpkjuVNluPDORvAIS2R3u+0SDAbk
 TyPzOIEZ4XtlOK6nOKSoMtnwgPw4NblGDPPWTZCjPtY1eL/x7KjJ3pLee0ryC68Q1Hv+0xd5nWL
 3G+K2VK+58Jy+6cY9QLpu3fWLxHi263OEm4DSgAHWxw==
X-Gm-Gg: AY/fxX4G7jqt7yrLfmA78h8YKExeUETp/cOpV7rZ12xhhZBPae1NWrbarQfeZefbrfJ
 neLx9i0+fRoU2ZVP9jqjKPq/G0K/bFb51ejaz6QgOdvAi+2eo5zNGBRvQdrOrR/yCIaEAMl0cpp
 L1mPKPEMZmIY/NaZMgfTjru2ELOKGVJEux6bM7+ne4vlYU5dxqgRiiaaSFPY5ALixgbU9gWxdBR
 zNIpHYyOGfe0Ot67fQvJ3yfci3U5BUGniieM93HDIMtwMR/I+m1WFEUtz2Q3PYYrglQIjo=
X-Google-Smtp-Source: AGHT+IFH26HIM1Kp3wljyZlm17MU8544r/SRfX8GLoMQZGa/E+hKLrCsDBrdFy6m1Z41MZiOPY2XNRmFeaY75/1Hms0=
X-Received: by 2002:a17:907:7288:b0:b80:15f6:6deb with SMTP id
 a640c23a62f3a-b8036ebd4eamr908702266b.1.1766346995166; Sun, 21 Dec 2025
 11:56:35 -0800 (PST)
MIME-Version: 1.0
From: Michal Berger <michallinuxstuff@gmail.com>
Date: Sun, 21 Dec 2025 20:56:25 +0100
X-Gm-Features: AQt7F2oGMw6gjTYIrlC7DYIVDngogwTEW4tyT0e3bkkIQT28-qNeAGCAQtJJJjs
Message-ID: <CACosJgw66jyGW5pizKAiqgbfSVFWSLgV7BkeKx=A7fObgNTUhA@mail.gmail.com>
To: openipmi-developer@lists.sourceforge.net
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  From: Michal Berger Date: Sun, 21 Dec 2025 20:27:59 +0100
 Subject: [PATCH] lanserv/bmc_sensor: Set proper completion code for the
 platform
 event Currently, depending on how rdata is set prior to the handler call,
 BMC may end up indicating that the "Invalid command" was sent, while still
 properly processing it and adding the event to SEL. Since [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.218.46 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [michallinuxstuff(at)gmail.com]
 0.0 HTML_MESSAGE           BODY: HTML included in message
X-Headers-End: 1vXPXm-0007jz-0q
Subject: [Openipmi-developer] [PATCH] lanserv/bmc_sensor: Set proper
 completion code for the platform event
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
Content-Type: multipart/mixed; boundary="===============3017468760939418321=="
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

--===============3017468760939418321==
Content-Type: multipart/alternative; boundary="000000000000326f5e06467bb536"

--000000000000326f5e06467bb536
Content-Type: text/plain; charset="UTF-8"

From: Michal Berger <michallinuxstuff@gmail.com>
Date: Sun, 21 Dec 2025 20:27:59 +0100
Subject: [PATCH] lanserv/bmc_sensor: Set proper completion code for the
platform event

Currently, depending on how rdata is set prior to the handler call, BMC
may end up indicating that the "Invalid command" was sent, while still
properly processing it and adding the event to SEL. Since this may be
a bit confusing on the requestor's end, make sure proper completion
code is returned.

Can be reproduced by sending a direct Platform Event Message, e.g.:

 # ipmitool sel list
 SEL has no entries
 # ipmitool raw 0x4 0x2 0x41 0x4 0x3 0xfe 0x80 0x1 0x2 0x3
 Unable to send RAW command (channel=0x0 netfn=0x4 lun=0x0 cmd=0x2
rsp=0xc1): Invalid command
 # echo $?
 1
 # # The event was successfully added to SEL anyway
 # ipmitool sel get 0x1
 SEL Record ID          : 0001
  Record Type           : 02
  Timestamp             : S+ 70/001 S+ 70/001
  Generator ID          : f041
  EvM Revision          : 04
  Sensor Type           : Current
  Sensor Number         : fe
  Event Type            : Unspecified
  Event Direction       : Deassertion Event
  Event Data            : 010203
  Description           :

Signed-off-by: Michal Berger <michallinuxstuff@gmail.com>
---
lanserv/bmc_sensor.c | 4 ++++
1 file changed, 4 insertions(+)

diff --git a/lanserv/bmc_sensor.c b/lanserv/bmc_sensor.c
index 9de230a0..1f43e178 100644
--- a/lanserv/bmc_sensor.c
+++ b/lanserv/bmc_sensor.c
@@ -130,6 +130,10 @@ handle_platform_event(lmc_data_t    *mc,
    sel_data[10] = msg->data[5];
    sel_data[11] = msg->data[6];
    sel_data[12] = msg->data[7];
+
+    rdata[0] = 0;
+    *rdata_len = 1;
+
    mc_new_event(mc, 2, sel_data);
}

--

--000000000000326f5e06467bb536
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">From: Michal Berger &lt;<a href=3D"mailto:michallinuxstuff=
@gmail.com">michallinuxstuff@gmail.com</a>&gt;<br>Date: Sun, 21 Dec 2025 20=
:27:59 +0100<br>Subject: [PATCH] lanserv/bmc_sensor: Set proper completion =
code for the<br>platform event<br><br>Currently, depending on how rdata is =
set prior to the handler call, BMC<br>may end up indicating=C2=A0that the &=
quot;Invalid command&quot; was sent, while still<br>properly processing it =
and adding the event to SEL. Since this may be<br>a bit confusing on the re=
questor&#39;s end, make sure proper completion<br>code is returned.<br><br>=
Can be reproduced by sending a direct Platform Event Message, e.g.:<br><br>=
=C2=A0# ipmitool sel list<br>=C2=A0SEL has no entries<br>=C2=A0# ipmitool r=
aw 0x4 0x2 0x41 0x4 0x3 0xfe 0x80 0x1 0x2 0x3 =C2=A0<br>=C2=A0Unable to sen=
d RAW command (channel=3D0x0 netfn=3D0x4 lun=3D0x0 cmd=3D0x2 rsp=3D0xc1): I=
nvalid command<br>=C2=A0# echo $?<br>=C2=A01<br>=C2=A0# # The event was suc=
cessfully added to SEL anyway<br>=C2=A0# ipmitool sel get 0x1 =C2=A0<br>=C2=
=A0SEL Record ID =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0: 0001<br>=C2=A0 Record =
Type =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 : 02<br>=C2=A0 Timestamp =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 : S+ 70/001 S+ 70/001<br>=C2=A0 Generator I=
D =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0: f041<br>=C2=A0 EvM Revision =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0: 04<br>=C2=A0 Sensor Type =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 : Current<br>=C2=A0 Sensor Number =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 : fe<br>=C2=A0 Event Type =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0: Unspe=
cified<br>=C2=A0 Event Direction =C2=A0 =C2=A0 =C2=A0 : Deassertion Event<b=
r>=C2=A0 Event Data =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0: 010203<br>=
=C2=A0 Description =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 :<br><br>Signed-off-b=
y: Michal Berger &lt;<a href=3D"mailto:michallinuxstuff@gmail.com">michalli=
nuxstuff@gmail.com</a>&gt;<br>---<br>lanserv/bmc_sensor.c | 4 ++++<br>1 fil=
e changed, 4 insertions(+)<br><br>diff --git a/lanserv/bmc_sensor.c b/lanse=
rv/bmc_sensor.c<br>index 9de230a0..1f43e178 100644<br>--- a/lanserv/bmc_sen=
sor.c<br>+++ b/lanserv/bmc_sensor.c<br>@@ -130,6 +130,10 @@ handle_platform=
_event(lmc_data_t =C2=A0 =C2=A0*mc,<br>=C2=A0 =C2=A0 sel_data[10] =3D msg-&=
gt;data[5];<br>=C2=A0 =C2=A0 sel_data[11] =3D msg-&gt;data[6];<br>=C2=A0 =
=C2=A0 sel_data[12] =3D msg-&gt;data[7];<br>+<br>+ =C2=A0 =C2=A0rdata[0] =
=3D 0;<br>+ =C2=A0 =C2=A0*rdata_len =3D 1;<br>+<br>=C2=A0 =C2=A0 mc_new_eve=
nt(mc, 2, sel_data);<br>}<br>=C2=A0<br>-- =C2=A0<br><br></div>

--000000000000326f5e06467bb536--


--===============3017468760939418321==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============3017468760939418321==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

--===============3017468760939418321==--

