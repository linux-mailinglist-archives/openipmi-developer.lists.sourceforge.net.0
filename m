Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 45F8E4E1BEF
	for <lists+openipmi-developer@lfdr.de>; Sun, 20 Mar 2022 15:00:31 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nVw6c-0004yH-F9; Sun, 20 Mar 2022 14:00:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <trix@redhat.com>) id 1nVw6b-0004yB-6g
 for openipmi-developer@lists.sourceforge.net; Sun, 20 Mar 2022 14:00:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HqtBnaidAKh4bnH8X6OIwDCPKflO5zN16a0ESKUGgsY=; b=GPScXOPr9QLGU0qVZgIgCEM6n3
 XGsU6SqcLkeufR0wA4kyM8Nysj2WMP5kymxsJAwOkXvTr8DIWo6uu7k9WNi7kmNA0mwX1aUQD8Rxe
 Y/wPRZpDxG7/JiORb2nZZ5IJ/V64dzTWJQhVy1K3+fwH2FAMJlZaEtYrv8WbSbe8KHzY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=HqtBnaidAKh4bnH8X6OIwDCPKflO5zN16a0ESKUGgsY=; b=Z
 vQYveEYlF4ctfcEpDXocogktyh5NfilSJ3YDCxInvu+oncMJDe6bPZLxXbX6YfDtrvZ7ysORIJpj2
 /8xVsRxh1YdqTTNw59HPewJoa9HSVaq0mg7rxIZWDylB5a2FWbG9d1xMgXcuxzp8a46ocwd10x8jl
 Zi/ci/hkAGssLnvE=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nVw6W-0007Vr-Uf
 for openipmi-developer@lists.sourceforge.net; Sun, 20 Mar 2022 14:00:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1647784813;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=HqtBnaidAKh4bnH8X6OIwDCPKflO5zN16a0ESKUGgsY=;
 b=AIwB7YLIgCapeGK09QrWWwNcDxRr6Jrh8qkfGlu6R8gJtB4aBcHog9VXvHjWbm8+2aNscm
 XcUS5kbamnJrive/csGr2vUlzlgfaErj/41YWWbC0vtLtMNpu6poeHFNPNJGvsF6KPSNC4
 grRWF3gukbrmPI/A1RauZYFbYlqdfZ4=
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-491-hj_Z6XMXMBOmg_RAJM6glw-1; Sun, 20 Mar 2022 10:00:12 -0400
X-MC-Unique: hj_Z6XMXMBOmg_RAJM6glw-1
Received: by mail-qk1-f200.google.com with SMTP id
 w200-20020a3762d1000000b0067d2149318dso8524176qkb.1
 for <openipmi-developer@lists.sourceforge.net>;
 Sun, 20 Mar 2022 07:00:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=HqtBnaidAKh4bnH8X6OIwDCPKflO5zN16a0ESKUGgsY=;
 b=QiMxyeTxPVOkwGi6rz6gu7TAGbhu+Ug6Q/77GaQ6MzpWC0K5yRTM9rzCbcD8ttUTMh
 S4OY5YwddSLfDmIXNiek9W2g7422fBQVisYh5ymHqNcP7p8YcwhVnA6Xwmp/13x8v1C1
 hUuyDUek62CSnYmKvSOOeI31X681MPD60yRJTwxrLEWaNyiifVfZhNFiqbT/6cOjgMAk
 AYcg7h2iE6Qtev0QmCpK4IkdS1BQjABlrrOCK6B7nhC8SfneICNrGo0VDMdOIbNX7cI1
 0x4BGihdGVd1dvRPbQOnPi5Z3jtz+vbmo1xCba+VYtAvOLWQcWo7lEqKYF24/QFvgHJF
 alHA==
X-Gm-Message-State: AOAM532V6UwShey1pbTpb0CYI6C3ywpNaTl/dILVWC1tZn5O9SipoOK4
 pRIybrbENP7UhL8mRx3FO3hZIXX/Jnw0XX9IB1nANEd5wqMXPLS3JS3KxMaezllfsn1GYKIKSl2
 U/y14mhUsINyIVXNjXmh05czdqj4R45XoRmkvXVo2
X-Received: by 2002:a05:622a:1009:b0:2e1:a2e8:4e63 with SMTP id
 d9-20020a05622a100900b002e1a2e84e63mr13276889qte.668.1647784811816; 
 Sun, 20 Mar 2022 07:00:11 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzlqaEeWCI8SmnIB2oKIVuA19Yctu0B6K5Ke0aAHbQCy5tIqe6tYsJr/bBcM2Tr/0lC3rE78g==
X-Received: by 2002:a05:622a:1009:b0:2e1:a2e8:4e63 with SMTP id
 d9-20020a05622a100900b002e1a2e84e63mr13276879qte.668.1647784811591; 
 Sun, 20 Mar 2022 07:00:11 -0700 (PDT)
Received: from localhost.localdomain.com (024-205-208-113.res.spectrum.com.
 [24.205.208.113]) by smtp.gmail.com with ESMTPSA id
 h22-20020a05620a245600b0067d6dae634csm7202133qkn.9.2022.03.20.07.00.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 20 Mar 2022 07:00:11 -0700 (PDT)
From: trix@redhat.com
To: minyard@acm.org,
	nathan@kernel.org,
	ndesaulniers@google.com
Date: Sun, 20 Mar 2022 06:59:54 -0700
Message-Id: <20220320135954.2258545-1-trix@redhat.com>
X-Mailer: git-send-email 2.26.3
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=trix@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Tom Rix <trix@redhat.com> Clang static analysis reports
 this issue ipmi_ssif.c:1731:3: warning: 4th function call argument is an
 uninitialized value dev_info(&ssif_info->client->dev,
 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.129.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.129.124 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nVw6W-0007Vr-Uf
Subject: [Openipmi-developer] [PATCH] ipmi: initialize len variable
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
Cc: Tom Rix <trix@redhat.com>, openipmi-developer@lists.sourceforge.net,
 llvm@lists.linux.dev, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

From: Tom Rix <trix@redhat.com>

Clang static analysis reports this issue
ipmi_ssif.c:1731:3: warning: 4th function call
  argument is an uninitialized value
  dev_info(&ssif_info->client->dev,
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The 4th parameter is the 'len' variable.
len is only set by a successful call to do_cmd().
Initialize to len 0.

Signed-off-by: Tom Rix <trix@redhat.com>
---
 drivers/char/ipmi/ipmi_ssif.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/char/ipmi/ipmi_ssif.c b/drivers/char/ipmi/ipmi_ssif.c
index ba779f1abb5b2..f199cc1948446 100644
--- a/drivers/char/ipmi/ipmi_ssif.c
+++ b/drivers/char/ipmi/ipmi_ssif.c
@@ -1625,7 +1625,7 @@ static int ssif_probe(struct i2c_client *client, const struct i2c_device_id *id)
 	unsigned char     *resp;
 	struct ssif_info   *ssif_info;
 	int               rv = 0;
-	int               len;
+	int               len = 0;
 	int               i;
 	u8		  slave_addr = 0;
 	struct ssif_addr_info *addr_info = NULL;
-- 
2.26.3



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
