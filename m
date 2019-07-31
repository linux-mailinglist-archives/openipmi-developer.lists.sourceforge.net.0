Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EC4077C610
	for <lists+openipmi-developer@lfdr.de>; Wed, 31 Jul 2019 17:20:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1hsqOy-0001uL-W3; Wed, 31 Jul 2019 15:20:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmaa@mellanox.com>) id 1hsqOx-0001uE-IS
 for openipmi-developer@lists.sourceforge.net; Wed, 31 Jul 2019 15:20:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MG9dSOrgyTBttPqkQA1adKB9Ux+XmHk32fjumsu3LDs=; b=c32ryTBv3EjmxJWHbPsOuyIB9x
 CyWieyY9tC02VhWoKO2GTFTifH2j1rRE0y6CquepvBE1ZVeT/TjJR992nOLTWIV+DKtRHsrDKMX9W
 wWK0l2vNGZxcP4e3i6UIqiuGPetrGAaLuYb9go4WSnpRuYeRQbqnjI4Pk86YX0egfQvU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=MG9dSOrgyTBttPqkQA1adKB9Ux+XmHk32fjumsu3LDs=; b=GYTCjS+KMkBEDdL4IufUFktpoc
 HbjzFStW6l48F64FPM91nXludqAvpkxrQcrXoHKRgCdmqrCJjrhsLfzvl3uysIVT9GtGyjDdn79bC
 TE3CM8isqjm5c17tA1RrYkia7YhuvvJPV6D1BlYV37crlirWCTatQPedcS0z5IrsNGVk=;
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtp (Exim 4.90_1)
 id 1hsqOv-005NKq-3F
 for openipmi-developer@lists.sourceforge.net; Wed, 31 Jul 2019 15:20:27 +0000
Received: from Internal Mail-Server by MTLPINE2 (envelope-from
 asmaa@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 31 Jul 2019 18:20:18 +0300
Received: from farm-0002.mtbu.labs.mlnx (farm-0002.mtbu.labs.mlnx [10.15.2.32])
 by mtbu-labmailer.labs.mlnx (8.14.4/8.14.4) with ESMTP id x6VFKHbH028926;
 Wed, 31 Jul 2019 11:20:17 -0400
Received: (from asmaa@localhost)
 by farm-0002.mtbu.labs.mlnx (8.14.7/8.13.8/Submit) id x6VFKGv8014835;
 Wed, 31 Jul 2019 11:20:16 -0400
From: Asmaa Mnebhi <Asmaa@mellanox.com>
To: minyard@acm.org
Date: Wed, 31 Jul 2019 11:20:13 -0400
Message-Id: <cover.1564586028.git.Asmaa@mellanox.com>
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
X-Headers-End: 1hsqOv-005NKq-3F
Subject: [Openipmi-developer] [PATCH v5 0/1] Support IPMB
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

Added all Corey's sugestions:
1) Create an ipmb data structure and don't re-use the serial
server data structures and code.
2) got rid of the ipmb_data structure which was adding
unnecessary complexity.

The things that need to be kept:
1) the prim_ipmb_in_cfg_file. Without this variable the code
will not work if we pass an ipmb channel number other than 0.

2) The ipmb_dev_int.c linux driver creates /dev/ipmb-<bus #>
to exchange data with user space. So we need to keep the check
in the ipmb_read_config function for the device file token.

Asmaa Mnebhi (1):
  Support IPMB

 lanserv/Makefile.am          |   2 +-
 lanserv/OpenIPMI/Makefile.am |   2 +-
 lanserv/OpenIPMI/ipmbserv.h  |  83 ++++++++++++++++
 lanserv/OpenIPMI/serv.h      |   4 +
 lanserv/README.design        |   6 +-
 lanserv/bmc.c                |   4 +
 lanserv/config.c             |   3 +
 lanserv/ipmb_ipmi.c          | 219 +++++++++++++++++++++++++++++++++++++++++++
 lanserv/ipmi_sim.c           |  96 +++++++++++++++++++
 lanserv/lan.conf             |  13 +++
 10 files changed, 429 insertions(+), 3 deletions(-)
 create mode 100644 lanserv/OpenIPMI/ipmbserv.h
 create mode 100644 lanserv/ipmb_ipmi.c

-- 
2.1.2



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
