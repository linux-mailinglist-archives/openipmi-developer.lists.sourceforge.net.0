Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CD8207C8B0
	for <lists+openipmi-developer@lfdr.de>; Wed, 31 Jul 2019 18:31:00 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1hsrVC-0005hf-Rn; Wed, 31 Jul 2019 16:30:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmaa@mellanox.com>) id 1hsrVB-0005hS-La
 for openipmi-developer@lists.sourceforge.net; Wed, 31 Jul 2019 16:30:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4DvNGDxR8GjQKPkygpboQMqIi84nq6KAYGUtYSa9mgU=; b=lkjtd3Z21JrCLD6rs4hrjTYTK2
 xrM7QZyV2CZSoe86684Amh+LdDW0irrJOYhtgkEfdI9nzM9SAzg1h4RVVqf2T7UfEkcOLVXOy4rxq
 chYA4bRajv2zSDrDVgN+dREHaEs16siSbm0syO6PttU0e8CX3iTrFuBz6dRP4zra3fnY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4DvNGDxR8GjQKPkygpboQMqIi84nq6KAYGUtYSa9mgU=; b=nAEJPTn4YblNo3zfOR1aqyPT++
 HGTiEa37H79BsGN6ReNWbT9ySIWVe3h8i1Sf5U8bd53I/qeF+BFIXvBoynTVNT6bj1dxRA6lJ6FN7
 I/TjbpgvX+rkhdrfwkx8Qmnyd3ePQ3+AEz+1NyBeEY3omS36STK2rJcORbAhyqlwnlmc=;
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtp (Exim 4.90_1)
 id 1hsrV9-005RZg-TQ
 for openipmi-developer@lists.sourceforge.net; Wed, 31 Jul 2019 16:30:57 +0000
Received: from Internal Mail-Server by MTLPINE2 (envelope-from
 asmaa@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 31 Jul 2019 19:30:49 +0300
Received: from farm-0002.mtbu.labs.mlnx (farm-0002.mtbu.labs.mlnx [10.15.2.32])
 by mtbu-labmailer.labs.mlnx (8.14.4/8.14.4) with ESMTP id x6VGUlIe030732;
 Wed, 31 Jul 2019 12:30:47 -0400
Received: (from asmaa@localhost)
 by farm-0002.mtbu.labs.mlnx (8.14.7/8.13.8/Submit) id x6VGUlQG017720;
 Wed, 31 Jul 2019 12:30:47 -0400
From: Asmaa Mnebhi <Asmaa@mellanox.com>
To: minyard@acm.org
Date: Wed, 31 Jul 2019 12:30:44 -0400
Message-Id: <cover.1564590483.git.Asmaa@mellanox.com>
X-Mailer: git-send-email 2.1.2
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [193.47.165.129 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: makefile.am]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
X-Headers-End: 1hsrV9-005RZg-TQ
Subject: [Openipmi-developer] [PATCH v6 0/1] Support IPMB
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

Fixed ipmb_read_config -> ipmbserv_read_config

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
