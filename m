Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 989A28657A
	for <lists+openipmi-developer@lfdr.de>; Thu,  8 Aug 2019 17:17:21 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1hvkAJ-0002CU-OG; Thu, 08 Aug 2019 15:17:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tony@camusofamily.com>) id 1hvNRb-0002dg-5X
 for openipmi-developer@lists.sourceforge.net; Wed, 07 Aug 2019 15:01:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Date:Message-ID:Subject:From:To:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lj+hgujjiLVo35Tmg46aBFyXijWVLWMLH+9UPJo6eFE=; b=CuUcskTd3jLpckKbVaKrkeWSds
 bn7baHmWySvKuPpk4rhtuN/IqC9Hi9sVUkkCfxBefdkWZv7VVUo8n0REY4jt0Uu9OQniMFmcffFmv
 5ZJk/1iq/pjCgfrHV07G1xcoiHgl+g/FcQXG8pzkWS3wLiIsULW6nrW4oSKcYPDruUsk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Date:Message-ID:
 Subject:From:To:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=lj+hgujjiLVo35Tmg46aBFyXijWVLWMLH+9UPJo6eFE=; b=U
 CNG5URLtWK525DUeJF1EqinMadxtCwfvp8rD483nbXjY/hSosebeooqu7VcewTWYKuXeQ9xFByUQq
 H0RLidqQlcNxrgps8mfhVe6zKA5bvzvyuIYals3Bmi21a/3hWNEZRiCExkCclgtHuHjJGveDhMGhH
 PLiiS4w3ceeB+HUo=;
Received: from outbound01.webhero.com ([216.57.225.250])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hvNRX-00E3jB-6A
 for openipmi-developer@lists.sourceforge.net; Wed, 07 Aug 2019 15:01:39 +0000
X-Virus-Scanned: by SpamTitan at webhero.com
Authentication-Results: outbound01.webhero.com; none
Received: (qmail 13463 invoked by uid 10000); 7 Aug 2019 14:31:02 -0000
Received: from unknown (HELO localhost.localdomain)
 (tony@camusofamily.com@66.187.232.66)
 by wh-qmail03b.webhero.com with ESMTPA; 7 Aug 2019 14:31:02 -0000
To: Corey Minyard <cminyard@mvista.com>,
 openipmi-developer@lists.sourceforge.net
From: Tony Camuso <tony@camusofamily.com>
Message-ID: <fd070e14-53c0-e03f-3356-5568ce3f6125@camusofamily.com>
Date: Wed, 7 Aug 2019 10:41:42 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
Content-Language: en-US
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: nec.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1hvNRX-00E3jB-6A
X-Mailman-Approved-At: Thu, 08 Aug 2019 15:17:18 +0000
Subject: [Openipmi-developer] Deadlock in ipmi
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net


Hi, Corey.

Osamu Samukawa <osa-samukawa@tg.jp.nec.com> reported a deadlock in the ipmi.

Kosuke Tatsukawa <tatsu@ab.jp.nec.com> characterized it as follows.

--------------------------------------------------------------------------------
Below is the source code level stack trace.

ipmi_thread() [drivers/char/ipmi/ipmi_si_intf.c:995]
  smi_event_handler() [drivers/char/ipmi/ipmi_si_intf.c:765]
   handle_transaction_done() [drivers/char/ipmi/ipmi_si_intf.c:555]
    deliver_recv_msg() [drivers/char/ipmi/ipmi_si_intf.c:283]
     ipmi_smi_msg_received() [drivers/char/ipmi/ipmi_msghandler.c:4503]
      intf_err_seq() [drivers/char/ipmi/ipmi_msghandler.c:1149]
       smi_remove_watch() [drivers/char/ipmi/ipmi_msghandler.c:999]
        set_need_watch() [drivers/char/ipmi/ipmi_si_intf.c:1066]

Upstream commit e1891cffd4c4896a899337a243273f0e23c028df adds code to
ipmi_smi_msg_received() to call smi_remove_watch() via intf_err_seq()
and this seems to be causing the deadlock.

commit e1891cffd4c4896a899337a243273f0e23c028df
Author: Corey Minyard <cminyard@mvista.com>
Date:   Wed Oct 24 15:17:04 2018 -0500
     ipmi: Make the smi watcher be disabled immediately when not needed
--------------------------------------------------------------------------------

I looked at the code, and Kosuke's analysis is correct. Function set_need_watch
tries to take out the same si_lock that was taken earlier by ipmi_thread.

Do we really need to take out the si_lock in ipmi_thread? Do we really need to
block IRQs that early?

Thanks and regards,
Tony Camuso





_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
