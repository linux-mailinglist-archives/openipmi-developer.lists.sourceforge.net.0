Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 56A6F421B40
	for <lists+openipmi-developer@lfdr.de>; Tue,  5 Oct 2021 02:40:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mXYVd-0004WH-Gv; Tue, 05 Oct 2021 00:40:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <tcminyard@gmail.com>) id 1mXYVb-0004Vx-J9
 for openipmi-developer@lists.sourceforge.net; Tue, 05 Oct 2021 00:40:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UeYE606AtOaUbHnjJix1yj04uzh2BmvD/bVanv2Ttbg=; b=M+iNBS5M3GNNCQf0wRmEOTxcHv
 7mnPHK0kw3mkbNvTB5YYcRkdE3YtMOJeSDiKH8ZUsvj/Q53AcOyirVT2w0KobcCyxNArXuDPUnQgX
 xpOfJ10FMJSyFCJ/oy5DuA0dDYlTIYrt7JNjDJ1CKx3douGkwTZyF/liaeK/H/4mMW2k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UeYE606AtOaUbHnjJix1yj04uzh2BmvD/bVanv2Ttbg=; b=JFrUZicKYkmZxpkLS6qjsIRcBi
 4y3o5RhCccHpEFj1aHdtiWytQu5B5naoNT/lQa2byOVN2zq4BioUztzQz8y3BUV58E+7Ql8KLxOas
 QePMDW90GhsKc91te0hiHMQq3U0zPgG/xM2Fw4vxe920LZUYAZIhxKWhu/l4YcM/Qkzg=;
Received: from mail-oo1-f44.google.com ([209.85.161.44])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mXYVX-0007cW-8J
 for openipmi-developer@lists.sourceforge.net; Tue, 05 Oct 2021 00:40:39 +0000
Received: by mail-oo1-f44.google.com with SMTP id
 j11-20020a4a92cb000000b002902ae8cb10so5915268ooh.7
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 04 Oct 2021 17:40:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=UeYE606AtOaUbHnjJix1yj04uzh2BmvD/bVanv2Ttbg=;
 b=Cff0WKDiZ8yw+AKafR9Ct3x0bcOY9Nviv6v+Xm8rYfXtR1VEkStYe0IK9EwuDfiWcc
 wLNFm5dO52ABBcbLocK8UNOu3UYaCNRtkftm46wPSp04JKGI7ymYU76sYagzPNdd6pkd
 A+yf5EVSeKU60u2zeGK8dptE/tWYZ67ndKxdseRkVgMfG5YPQPf/+X97QqbqqgUW+baq
 eQJjAPtv9EeeQdBL91k2+VTK3UqcHzQ9ieUHMuMI20Mkv4SgJ2mY9Pu31DL+hSsqSX0H
 B+7jJCxruDTGYkyORCIIPXwxAfhw861jXovqBWa5nW8TXXuyW/mbsTd+QY6SA98xUbXj
 DS7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=UeYE606AtOaUbHnjJix1yj04uzh2BmvD/bVanv2Ttbg=;
 b=Tr7D7jkHY9L0iGn1wIPQa5zmP4Ydt8QCaxmQt143dr8KkDyKxf8i/wPNclt/uPYKNQ
 7bwxVMakHVp2ensk6dNspQInrFUZVpWlKlJXhoRFATVzDN045seYCSP47+cR1lkYVoD0
 YmKWR4O1OlX7vdYg7GLPmITJIkYwQTwRnrdgxEaxQ8wuY0ESpKtRRT4QijjycFoU5Xha
 xKYCM7JVOpw8RXNgMvKPLAb53mAhFnpX9gbN1i9KDcg8Ge2Vx1s5Tg73nOzDt0Eaqfs/
 E7nw4/aGnheMo/qTECnLLxtvvghUmidMn8MPKHnQLPSJrxsPke7Gwc+bDN0aic0k+BEA
 XGbg==
X-Gm-Message-State: AOAM5306OyWYpU1nbCwNJvQyLyKxljCvkvq56kzaL3CLavw4oeXzgtbb
 JR81y+VZRs3flc8uSmwcjg==
X-Google-Smtp-Source: ABdhPJyTQvC7dXmTdY6LWviqi3pBypqXnLtELwE1A5hdLnkSLfmX44ujX4m/j2av3GJOeMj1SDbmaQ==
X-Received: by 2002:a4a:d185:: with SMTP id j5mr11384754oor.16.1633394429506; 
 Mon, 04 Oct 2021 17:40:29 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id o8sm3097824oiw.39.2021.10.04.17.40.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 Oct 2021 17:40:27 -0700 (PDT)
Received: from t560.minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:1ce5:3fb4:8fe9:30d1])
 by serve.minyard.net (Postfix) with ESMTPA id 774071800F8;
 Tue,  5 Oct 2021 00:40:26 +0000 (UTC)
From: minyard@acm.org
To: openipmi-developer@lists.sourceforge.net
Date: Mon,  4 Oct 2021 19:40:18 -0500
Message-Id: <20211005004019.2670691-5-minyard@acm.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211005004019.2670691-1-minyard@acm.org>
References: <20211005004019.2670691-1-minyard@acm.org>
MIME-Version: 1.0
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Corey Minyard <cminyard@mvista.com> Describe the
 addressing
 mechanism and how to use it. Signed-off-by: Corey Minyard <minyard@acm.org>
 Tested-by: Andrew Manley <andrew.manley@sealingtech.com> Reviewed-by: Andrew
 Manley <andrew.manley@sealingtech.com> --- Documentation/driver-api/ipmi.rst
 [...] Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.161.44 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.161.44 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1mXYVX-0007cW-8J
Subject: [Openipmi-developer] [PATCH 4/5] ipmi: Add docs for IPMB direct
 addressing
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
 Andrew Manley <andrew.manley@sealingtech.com>, linux-kernel@vger.kernel.org,
 Corey Minyard <minyard@acm.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

From: Corey Minyard <cminyard@mvista.com>

Describe the addressing mechanism and how to use it.

Signed-off-by: Corey Minyard <minyard@acm.org>
Tested-by: Andrew Manley <andrew.manley@sealingtech.com>
Reviewed-by: Andrew Manley <andrew.manley@sealingtech.com>
---
 Documentation/driver-api/ipmi.rst | 25 +++++++++++++++++++++++--
 1 file changed, 23 insertions(+), 2 deletions(-)

diff --git a/Documentation/driver-api/ipmi.rst b/Documentation/driver-api/ipmi.rst
index bc281f10ce4b..c9cb5669bc4c 100644
--- a/Documentation/driver-api/ipmi.rst
+++ b/Documentation/driver-api/ipmi.rst
@@ -166,8 +166,8 @@ and the type is IPMI_SYSTEM_INTERFACE_ADDR_TYPE.  This is used for talking
 straight to the BMC on the current card.  The channel must be
 IPMI_BMC_CHANNEL.
 
-Messages that are destined to go out on the IPMB bus use the
-IPMI_IPMB_ADDR_TYPE address type.  The format is::
+Messages that are destined to go out on the IPMB bus going through the
+BMC use the IPMI_IPMB_ADDR_TYPE address type.  The format is::
 
   struct ipmi_ipmb_addr
   {
@@ -181,6 +181,23 @@ The "channel" here is generally zero, but some devices support more
 than one channel, it corresponds to the channel as defined in the IPMI
 spec.
 
+There is also an IPMB direct address for a situation where the sender
+is directly on an IPMB bus and doesn't have to go through the BMC.
+You can send messages to a specific management controller (MC) on the
+IPMB using the IPMI_IPMB_DIRECT_ADDR_TYPE with the following format::
+
+  struct ipmi_ipmb_direct_addr
+  {
+	int           addr_type;
+	short         channel;
+	unsigned char slave_addr;
+	unsigned char rq_lun;
+	unsigned char rs_lun;
+  };
+
+The channel is always zero.  You can also receive commands from other
+MCs that you have registered to handle and respond to them, so you can
+use this to implement a management controller on a bus..
 
 Messages
 --------
@@ -348,6 +365,10 @@ user may be registered for each netfn/cmd/channel, but different users
 may register for different commands, or the same command if the
 channel bitmasks do not overlap.
 
+To respond to a received command, set the response bit in the returned
+netfn, use the address from the received message, and use the same
+msgid that you got in the receive message.
+
 From userland, equivalent IOCTLs are provided to do these functions.
 
 
-- 
2.25.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
