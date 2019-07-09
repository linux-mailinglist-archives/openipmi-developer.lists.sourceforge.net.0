Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F0F663957
	for <lists+openipmi-developer@lfdr.de>; Tue,  9 Jul 2019 18:27:35 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1hksxp-0005Pj-Ki; Tue, 09 Jul 2019 16:27:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmaa@mellanox.com>) id 1hksxn-0005PZ-Kg
 for openipmi-developer@lists.sourceforge.net; Tue, 09 Jul 2019 16:27:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=u/XzHwT45cQdvw0a9afBEfWfDIpHmQhjPiWZpDo1Ym4=; b=ciArNNdsF5ompr5uaZfK8+sfYR
 hpMpwoW2HTzzA+I3qynAnAvnXhOQiPTQ9MjxdM+vGZ/verra3NQJdhaRQQlt/Rh+NAl/AoI7NOjnf
 /0cyOJk/pNBpnEhqk7qqQyOQyhnFALlEMVgkz1VcZbnEHlaKg356pwb18Ht1NPZlp+/8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=u/XzHwT45cQdvw0a9afBEfWfDIpHmQhjPiWZpDo1Ym4=; b=layChWuUjE3T3VcbAZvZrJtz+S
 YnBkSNhJxRB+3CZM0jYK3vXqrxEcYRQLFLkgNWCK4ggeA8omaGvn6kS169nVDwGPoywJr2Zwz26NY
 NC/RxmpXfRbWWF2aKvGKp3gv27MLBVWWHZNUlbIubTQXge5PVdsvCAefpLUZv8XKcn2w=;
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtp (Exim 4.90_1)
 id 1hksxl-00DFiV-7H
 for openipmi-developer@lists.sourceforge.net; Tue, 09 Jul 2019 16:27:31 +0000
Received: from Internal Mail-Server by MTLPINE2 (envelope-from
 asmaa@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 9 Jul 2019 19:00:37 +0300
Received: from farm-0002.mtbu.labs.mlnx (farm-0002.mtbu.labs.mlnx [10.15.2.32])
 by mtbu-labmailer.labs.mlnx (8.14.4/8.14.4) with ESMTP id x69G0ZPn011875;
 Tue, 9 Jul 2019 12:00:35 -0400
Received: (from asmaa@localhost)
 by farm-0002.mtbu.labs.mlnx (8.14.7/8.13.8/Submit) id x69G0XLr021780;
 Tue, 9 Jul 2019 12:00:33 -0400
From: Asmaa Mnebhi <Asmaa@mellanox.com>
To: minyard@acm.org
Date: Tue,  9 Jul 2019 12:00:30 -0400
Message-Id: <cover.1562687885.git.Asmaa@mellanox.com>
X-Mailer: git-send-email 2.1.2
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: makefile.am]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [193.47.165.129 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
X-Headers-End: 1hksxl-00DFiV-7H
Subject: [Openipmi-developer] [PATCH v3 0/1] Support IPMB
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

1) Fixed some nits
2) Fixed comment in lan.conf file

Asmaa Mnebhi (1):
  Support IPMB

 lanserv/Makefile.am          |   2 +-
 lanserv/OpenIPMI/Makefile.am |   2 +-
 lanserv/OpenIPMI/ipmbserv.h  |  62 ++++++++++
 lanserv/OpenIPMI/serv.h      |   6 +
 lanserv/README.design        |   6 +-
 lanserv/bmc.c                |   4 +
 lanserv/config.c             |   3 +
 lanserv/ipmb_ipmi.c          | 261 +++++++++++++++++++++++++++++++++++++++++++
 lanserv/ipmi_sim.c           |  86 ++++++++++++++
 lanserv/lan.conf             |  10 ++
 10 files changed, 439 insertions(+), 3 deletions(-)
 create mode 100644 lanserv/OpenIPMI/ipmbserv.h
 create mode 100644 lanserv/ipmb_ipmi.c

-- 
2.1.2



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
