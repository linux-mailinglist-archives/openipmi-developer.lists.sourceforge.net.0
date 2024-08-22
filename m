Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D5F5595BBEF
	for <lists+openipmi-developer@lfdr.de>; Thu, 22 Aug 2024 18:29:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1shAgW-0007EJ-Gu;
	Thu, 22 Aug 2024 16:29:15 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <minyard@acm.org>) id 1shAgK-0007Do-Vv
 for openipmi-developer@lists.sourceforge.net;
 Thu, 22 Aug 2024 16:29:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Reply-To:Message-ID:
 Subject:To:From:Date:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/F1kktEXVCfajgTCM7sERMC0+7VuXOA9mKUz7f2ns4s=; b=TV7iCqSU7+v5W5C6IKCuuNrt+3
 1Pc49LjSCtXpuTBP1FutiU2Kg5CqDC/XapFU0fCuPrsaPbzYSBsHLbRfZ1E9lRnFIcbyaLhfrHgYv
 ALRnV7njBewOOeiCS+K2sKb8vjC3nTbJhzOXO6b2K1DTrF1m86zUFck+O5uVaa1/yvYw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Reply-To:Message-ID:Subject:To:From:Date:Sender
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=/F1kktEXVCfajgTCM7sERMC0+7VuXOA9mKUz7f2ns4s=; b=Q
 xbV4QxquVhLOLPJWnveVRxv+eTlFhyheFhMxDOc8gbNJ37HkIBewXF+GauUxQsTACiYy0vCfTTB2L
 sGc5nYpbPVfeqI2SZLC1bSwA3MiEt0dvMvZr9TCtSsCF44b/wX3pGdbGKSSOSHFAMbv+6gu3kpFv+
 C2ViQ3TRv/gSc9Jc=;
Received: from 008.lax.mailroute.net ([199.89.1.11])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1shAgB-00020b-Is for openipmi-developer@lists.sourceforge.net;
 Thu, 22 Aug 2024 16:28:56 +0000
Received: from localhost (localhost [127.0.0.1])
 by 008.lax.mailroute.net (Postfix) with ESMTP id 4WqTCx2SHhz6ClY9K
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 22 Aug 2024 16:28:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=acm.org; h=
 content-disposition:content-type:content-type:mime-version
 :reply-to:message-id:subject:subject:from:from:date:date
 :received:received; s=mr01; t=1724344124; x=1726936125; bh=/F1kk
 tEXVCfajgTCM7sERMC0+7VuXOA9mKUz7f2ns4s=; b=cW7yS0Ine9S23bfFVp5D0
 DME5Y664hjBHGJ/qlouHg/JoLLUXvn9oUWrc7wHqCUD2NENABfbx7wFk9iH1i+8C
 eaMIUeaXl0u8EutuRrfYkMFdwoTDCVJpvMpy+U941MaGtHRtn3k0/8DnKqwidv1j
 x9vDfCp2C06HWoNFep/A95A6Z00sIUCOFaYxmuUnFubj2LQdCDZOfjw+XW2NUKC7
 SlBOpAsXXPgJFQT85MIiQMOXN7qR7NHb3gpbdI0MjpYh3nnO0xDBCi2rVGCG+PGI
 cQ0mttBc/TGHrXW4m8SwQVVvByorzMAMuwPl0RV5FzrVCAhWQEUf+uD4WnKkbzZd
 Q==
X-Virus-Scanned: by MailRoute
Received: from 008.lax.mailroute.net ([127.0.0.1])
 by localhost (008.lax [127.0.0.1]) (mroute_mailscanner, port 10029) with LMTP
 id gZBuSKqoJ7hL for <openipmi-developer@lists.sourceforge.net>;
 Thu, 22 Aug 2024 16:28:44 +0000 (UTC)
Received: from mail.minyard.net (unknown [47.184.169.91])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest
 SHA256) (No client certificate requested)
 (Authenticated sender: minyard@acm.org)
 by 008.lax.mailroute.net (Postfix) with ESMTPSA id 4WqTCw2Cldz6ClY9J
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 22 Aug 2024 16:28:43 +0000 (UTC)
Date: Thu, 22 Aug 2024 11:28:42 -0500
To: OpenIPMI Developers <openipmi-developer@lists.sourceforge.net>
Message-ID: <ZsdnOv9F0g2hkslJ@mail.minyard.net>
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: There was a bug found by AWS Security that affected the IPMI
 simulator, ipmi_sim. It does NOT affect the main library, just the simulator.
 This is mainly used for testing (by OpenIPMI and others) but [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: acm.org]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [199.89.1.11 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [199.89.1.11 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [199.89.1.11 listed in sa-trusted.bondedsender.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1shAgB-00020b-Is
Subject: [Openipmi-developer] CVE-2024-42934 for OpenIPMI
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
From: Corey Minyard via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: minyard@acm.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

There was a bug found by AWS Security that affected the IPMI simulator,
ipmi_sim. It does NOT affect the main library, just the simulator. This
is mainly used for testing (by OpenIPMI and others) but I am fairly sure
that some people are using this in production systems to control QEMU
systems and to provide serial over LAN access to those systems.
Unfortunately, I do not know who is using it for this purpose.

The bug is a missing check on the authorization type on incoming LAN
messages. This can certainly be used to DOS ipmi_sim by causing it to
crash by doing an index outside of an array. Since the value is 4 bits
for old IPMI LAN and 8 bits for RMCP+, there is a limited range of what
can be addressed. So there is a low probability that it could be used to
cause messages to be authenticated without being actually authenticated.
There is a very low probability it can be used for arbitrary code
execution.

So if you are using ipmi_sim, you should upgrade to OpenIPMI 2.0.36 or
later.

This is fixed by b52e8e2538b2 "lanserv: Check some bounds on incoming
messages" with another fix, 4c129d0540f "lanserv: Fix an issue with
authorization range checking" that fixes a bug introduced by the first
change.

-corey


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
