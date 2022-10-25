Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BCC0F60CB11
	for <lists+openipmi-developer@lfdr.de>; Tue, 25 Oct 2022 13:41:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1onIJ1-0002RG-FE;
	Tue, 25 Oct 2022 11:41:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <liubo03@inspur.com>) id 1onDPB-0006o6-Jg
 for openipmi-developer@lists.sourceforge.net;
 Tue, 25 Oct 2022 06:27:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:Subject:
 CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oY93kPVXJM5Myxw1qNHR44ogMa/29IhuiUJsCsv71rU=; b=HbF91A3eFfldskNdEx6Rh9RL+q
 llUcAhU+VG2mQ0J8t1M4VwYjQrrq3aQjd9qCB3ps9jOQQM7LA/LQABjdw8U4NV0umCGfGzuQH0UqB
 E1Vo1QRvcMjNAxFHKKr0ETzG+INW7Di4LhC7iIE2QtDeLYIqqvCLBWrz5S9EIQGhakpA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=oY93kPVXJM5Myxw1qNHR44ogMa/29IhuiUJsCsv71rU=; b=S
 Z4BFVkEztpARR+AmStpOCDC3WUscx2pTlug6l07u9R6+kWeD9XA4mZzDRvyLU5LrQpV+wakhgUewg
 Cf+8sskclCceEQPxWeUueR3RW89Tc7IpDV5iID9a3YMrAGpSHzHGQ0NhWEKjPQiik3O1hlxBfLcpn
 sDIa5PGMJQj3grF8=;
Received: from 186.whitelist.crbl.net ([162.243.126.186])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1onDP9-00GXuA-Fw for openipmi-developer@lists.sourceforge.net;
 Tue, 25 Oct 2022 06:27:17 +0000
Received: from ([60.208.111.195])
 by unicom145.biz-email.net ((D)) with ASMTP (SSL) id TGD00042;
 Tue, 25 Oct 2022 14:04:42 +0800
Received: from localhost.localdomain (10.200.104.97) by
 jtjnmail201608.home.langchao.com (10.100.2.8) with Microsoft SMTP Server id
 15.1.2507.12; Tue, 25 Oct 2022 14:04:41 +0800
From: Bo Liu <liubo03@inspur.com>
To: <minyard@acm.org>
Date: Tue, 25 Oct 2022 02:04:36 -0400
Message-ID: <20221025060436.4372-1-liubo03@inspur.com>
X-Mailer: git-send-email 2.18.2
MIME-Version: 1.0
X-Originating-IP: [10.200.104.97]
tUid: 202210251404421e5c86a4b1d93292ca38a56c0fd6dd38
X-Abuse-Reports-To: service@corp-email.com
Abuse-Reports-To: service@corp-email.com
X-Complaints-To: service@corp-email.com
X-Report-Abuse-To: service@corp-email.com
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The current code provokes some kernel-doc warnings:
 drivers/char/ipmi/ipmi_msghandler.c:618:
 warning: This comment starts with '/**', but isn't a kernel-doc comment.
 Refer Documentation/doc-guide/kern [...] 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1onDP9-00GXuA-Fw
X-Mailman-Approved-At: Tue, 25 Oct 2022 11:41:14 +0000
Subject: [Openipmi-developer] [PATCH] ipmi: Fix some kernel-doc warnings
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
 Bo Liu <liubo03@inspur.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

The current code provokes some kernel-doc warnings:
	drivers/char/ipmi/ipmi_msghandler.c:618: warning: This comment starts with '/**', but isn't a kernel-doc comment. Refer Documentation/doc-guide/kernel-doc.rst

Signed-off-by: Bo Liu <liubo03@inspur.com>
---
 drivers/char/ipmi/ipmi_msghandler.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index d5ee52be176d..f6b8ca6df9b5 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -614,7 +614,7 @@ static int __ipmi_bmc_register(struct ipmi_smi *intf,
 static int __scan_channels(struct ipmi_smi *intf, struct ipmi_device_id *id);
 
 
-/**
+/*
  * The driver model view of the IPMI messaging driver.
  */
 static struct platform_driver ipmidriver = {
-- 
2.27.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
