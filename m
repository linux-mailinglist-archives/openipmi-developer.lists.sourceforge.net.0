Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 04C448656E
	for <lists+openipmi-developer@lfdr.de>; Thu,  8 Aug 2019 17:16:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1hvk98-00028e-GE; Thu, 08 Aug 2019 15:16:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <baijiaju1990@gmail.com>) id 1hqESt-0008RI-Kk
 for openipmi-developer@lists.sourceforge.net; Wed, 24 Jul 2019 10:25:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1/gt9BhlisdGUb5bIZc32HBL4A6Aaa9ZnK24W35108A=; b=BpqUkNaXJuoGJmde6zPqGjf1X4
 1GSEy339Mdg6yGecLliWDlmqU/4LnRFTTi1qUSH3FSRf+ufTILktlcV0M+ypZTDkoszh4s0Uto+bK
 qOF8Ls7I4VNCjXow9tw+JRYVP1HVgRl/PJp2T+VU8cBbALh/aURsjjLJWdjd1FOfd4eI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1/gt9BhlisdGUb5bIZc32HBL4A6Aaa9ZnK24W35108A=; b=YlBLpp4rbjH9xoLDzF+Yy+WOYl
 aOj15kjygu6dqgKmVTG/lqn161tZBTVRFoiIC+uAerrhz8f0fFw7DPij8l8orr+7f3+oVR+N5lIJI
 dbHdHNOsnrqRrHX24sRKTe27tt/1yesIQ3ddq4DIOx0uzKeBoW3rNDcaDqjKIuXsVRck=;
Received: from mail-pl1-f196.google.com ([209.85.214.196])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hqESq-00Dz9W-DE
 for openipmi-developer@lists.sourceforge.net; Wed, 24 Jul 2019 10:25:43 +0000
Received: by mail-pl1-f196.google.com with SMTP id b7so21869761pls.6
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 24 Jul 2019 03:25:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=1/gt9BhlisdGUb5bIZc32HBL4A6Aaa9ZnK24W35108A=;
 b=uA+OZd8OySVziMrPHNJlp60UvU/H1XoCXeIteODI4UVYJH3MAjLo+IOHEXdFNY8h5i
 pr0R/dkOYJgka3vNCqkhoIypXKnICTZllMqAyfGbTtjC/G5OMFRpbveFWnvnN39eoHNj
 X3ZDqCKdtyj8DH/qAyfJ4DpbGmjgw55WrNLNbF9TjeQkrUyH+grXqZTkxWWG0Q3KWy4P
 /jLf1aij38VDEaks4ev0UTdljmO+l/gJHBD226q0t2sILIyYyauDQBDaiuabz5bWrjxx
 A+WwOngLVnh9zt90tY/tUwvlLiF9DzGsVjU01Eb0biJYyC8tRyOi7xRECotdniKsT8AA
 5hzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=1/gt9BhlisdGUb5bIZc32HBL4A6Aaa9ZnK24W35108A=;
 b=mArn0wCH7IlMP34p3hKwqP6lK5nfclnNcGFi/mx9KkPjCfQwlrmkiP2KsMui1YgtyJ
 UqiK4fVXeW73kcxebkAIOs80rG6d5/bV0wDLl5EtuRbgmrOqr4Cf6Uos16OB2oWEJVYT
 dgxRT3QX0iA2PXVpjtU5u6qPe6HFzvhi5aIjMoOy2rujBggZlPOPwk+YMXUyww71fzbR
 sU9XC27S1/uWOQcktkGv5/pRuccL9WAZs1llgPzZ+dISV1JX/9ICPktab0AcfYrYOPGJ
 OSltljgR7FbfFG0oJN09QGZbfZDQd2z9NITHhzk6jkKywAn6O0KYyzjWhRYZlvwBxJPp
 cPuA==
X-Gm-Message-State: APjAAAWQHB/7ppYa8gbnfvLBzWhHBhkMUyonl73dnwwt7Qj/UVIXYS91
 AHhtN5BfNtPvtn/od/SgSvg=
X-Google-Smtp-Source: APXvYqxxGp3flXzVyzWbj/zh0xh6vUqDvte2zaHDbhrC2vAsWVTrHXB8Fgmq7JWlgVdg5McEOzQf6w==
X-Received: by 2002:a17:902:44f:: with SMTP id
 73mr86081038ple.192.1563963934771; 
 Wed, 24 Jul 2019 03:25:34 -0700 (PDT)
Received: from oslab.tsinghua.edu.cn ([2402:f000:4:72:808::3ca])
 by smtp.gmail.com with ESMTPSA id f7sm45390884pfd.43.2019.07.24.03.25.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 24 Jul 2019 03:25:34 -0700 (PDT)
From: Jia-Ju Bai <baijiaju1990@gmail.com>
To: minyard@acm.org,
	arnd@arndb.de,
	gregkh@linuxfoundation.org
Date: Wed, 24 Jul 2019 18:25:28 +0800
Message-Id: <20190724102528.2165-1-baijiaju1990@gmail.com>
X-Mailer: git-send-email 2.17.0
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (baijiaju1990[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.196 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.214.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit (baijiaju1990[at]gmail.com)
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.5 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hqESq-00Dz9W-DE
X-Mailman-Approved-At: Thu, 08 Aug 2019 15:16:04 +0000
Subject: [Openipmi-developer] [PATCH] char: ipmi: Fix possible pointer
 dereferences in msg_done_handler()
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
Cc: openipmi-developer@lists.sourceforge.net,
 Jia-Ju Bai <baijiaju1990@gmail.com>, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

In msg_done_handler(), there is an if statement on line 778 to check
whether msg is NULL:
    if (msg)

When msg is NULL, it is used on line 845:
    if ((result < 0) || (len < 3) || (msg->rsp[2] != 0))
and line 869:
    if ((result < 0) || (len < 3) || (msg->rsp[2] != 0))

Thus, possible null-pointer dereferences may occur.

To fix these bugs, msg is checked before being used.

These bugs are found by a static analysis tool STCheck written by us.

Signed-off-by: Jia-Ju Bai <baijiaju1990@gmail.com>
---
 drivers/char/ipmi/ipmi_ssif.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/char/ipmi/ipmi_ssif.c b/drivers/char/ipmi/ipmi_ssif.c
index 305fa5054274..2e40a98d9939 100644
--- a/drivers/char/ipmi/ipmi_ssif.c
+++ b/drivers/char/ipmi/ipmi_ssif.c
@@ -842,6 +842,8 @@ static void msg_done_handler(struct ssif_info *ssif_info, int result,
 		break;
 
 	case SSIF_GETTING_EVENTS:
+		if (!msg)
+			break;
 		if ((result < 0) || (len < 3) || (msg->rsp[2] != 0)) {
 			/* Error getting event, probably done. */
 			msg->done(msg);
@@ -866,6 +868,8 @@ static void msg_done_handler(struct ssif_info *ssif_info, int result,
 		break;
 
 	case SSIF_GETTING_MESSAGES:
+		if (!msg)
+			break;
 		if ((result < 0) || (len < 3) || (msg->rsp[2] != 0)) {
 			/* Error getting event, probably done. */
 			msg->done(msg);
-- 
2.17.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
