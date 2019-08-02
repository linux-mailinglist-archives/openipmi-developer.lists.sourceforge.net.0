Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B7A7E7E758
	for <lists+openipmi-developer@lfdr.de>; Fri,  2 Aug 2019 03:04:35 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1htLzl-00044z-Ko; Fri, 02 Aug 2019 01:04:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1htLzk-00044e-DE
 for openipmi-developer@lists.sourceforge.net; Fri, 02 Aug 2019 01:04:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3/kbP0svSsUq8SJpgLX1Dp0HLWCTGDCFyMDclc7G+oQ=; b=EdDuXBWv+dIX3ixhmixTrfTynZ
 va0WrsOCRgHYtnCwYe2nK3UMro9pRwhpOTnU/tIeWXyg/AlElNZuLnhxOKdFeJ8uVvkMio7WGpuda
 BnxGIXBMcTkCMgeqidxzLcMGMM1p7AQaMDdIkY1b2NQA9k4eIbXyDfvtB2JKcv5qiAdc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3/kbP0svSsUq8SJpgLX1Dp0HLWCTGDCFyMDclc7G+oQ=; b=JIWVakN7OD9+2mM4E7LYb+PeIf
 A5/sJyvd9CNFxc8eU8okoIcpieQWQxpeo+dqs3tktA2fkhAXowJ7WQcHBqEW+QnmYiUqRYYoWGndd
 V7W9A3fM7mwiwLb6Ha4HANlJj45Gv6twR+DkyaY9Ouo8Nc7wjn23kc+1cqv3s5bHf3XM=;
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1htLzg-007B9R-Pm
 for openipmi-developer@lists.sourceforge.net; Fri, 02 Aug 2019 01:04:32 +0000
Received: by mail-ot1-f68.google.com with SMTP id d17so76436200oth.5
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 01 Aug 2019 18:04:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=3/kbP0svSsUq8SJpgLX1Dp0HLWCTGDCFyMDclc7G+oQ=;
 b=TH1LpnCjNMyCmMXCAtIs8HWAJ1OlCTZrJcfbxoKgSmdKFzMhMw8CGgeFNrZhf6Hq18
 WyfCxcnoiuRNKhirZcLAoy/XQYQGRmDzEYhtOpXH29v5mq6+6T78l7moXzPqTarMe+Xe
 dldRRFjGCG/N+ff2jNqsldKcxI56sI7XnZS6miYHTfp3WeJ5Q0XAl9YwapQ4NIvbCJnI
 CTXw24qpAxfm84TiHuAcnyp5Vpg6QXHK8dFWybVirYO/2zR+voqT8GPVNfceGwd25iY7
 s7zhNZvpW0DVfa9zDgOa0mpBCmUo69uUWYaXIeAUFu2HmOImd5AzTDtAJYWdYOLfaUHY
 LtqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=3/kbP0svSsUq8SJpgLX1Dp0HLWCTGDCFyMDclc7G+oQ=;
 b=t8qrnFj5WJFy2Iepsz0HsnQfgJf8Z1IR3Ukjt7YPJNxPuFxXyOohLpamSw9gGL6Im3
 OL6D1d8FvhxgImvGleC6JZ2Vpl7zuMy3fL/rA9oRzI2bf+BamYcexVrHblzTCR6CULn7
 V8ZS7DVwYL2zDnwVZa6Z3TNoG4PhfnVHus+3zNW7B2kkZVok/X1/okINgc5OlQSPcVOi
 J006GjxUAVzzc0l46JQFtqnlV7ZDVmGNTOQibyzcPMJbzzEDWWhPLnQiqspMNKpO+32N
 KPEd/in4flyIgdxX0mdbYPDIcom3XV39TYORW1bNCjYDEvPK9sAIDjNr+eXJKlx0e0cb
 rVeA==
X-Gm-Message-State: APjAAAVOqI8L6Kaymv/EzQmHiWg4dtoC8Ffk3PWi2FWKeI2UEX8B11hO
 i7GbiW+pHWn31TQwfgH/mblMIP0=
X-Google-Smtp-Source: APXvYqxBm3e3DYlt4PzuIqJIR3v4YM/QMgCJRCmRa3aDY7LSWhUW73YaPTWOsuCPmbSwbpfQgy45Dw==
X-Received: by 2002:a9d:4c8b:: with SMTP id m11mr6831800otf.293.1564707862466; 
 Thu, 01 Aug 2019 18:04:22 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id k10sm25030098otl.21.2019.08.01.18.04.21
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 01 Aug 2019 18:04:21 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:11bd:bafd:193e:17d9])
 by serve.minyard.net (Postfix) with ESMTPSA id 643F91800D1;
 Fri,  2 Aug 2019 01:04:21 +0000 (UTC)
Date: Thu, 1 Aug 2019 20:04:20 -0500
From: Corey Minyard <minyard@acm.org>
To: Asmaa Mnebhi <Asmaa@mellanox.com>
Message-ID: <20190802010420.GD5001@minyard.net>
References: <cover.1564590483.git.Asmaa@mellanox.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1564590483.git.Asmaa@mellanox.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: makefile.am]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1htLzg-007B9R-Pm
Subject: Re: [Openipmi-developer] [PATCH v6 0/1] Support IPMB
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
Reply-To: minyard@acm.org
Cc: openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, Jul 31, 2019 at 12:30:44PM -0400, Asmaa Mnebhi wrote:
> Fixed ipmb_read_config -> ipmbserv_read_config

Ok, it's included and pushed up to master.

Thanks

-corey

> 
> Asmaa Mnebhi (1):
>   Support IPMB
> 
>  lanserv/Makefile.am          |   2 +-
>  lanserv/OpenIPMI/Makefile.am |   2 +-
>  lanserv/OpenIPMI/ipmbserv.h  |  83 ++++++++++++++++
>  lanserv/OpenIPMI/serv.h      |   4 +
>  lanserv/README.design        |   6 +-
>  lanserv/bmc.c                |   4 +
>  lanserv/config.c             |   3 +
>  lanserv/ipmb_ipmi.c          | 219 +++++++++++++++++++++++++++++++++++++++++++
>  lanserv/ipmi_sim.c           |  96 +++++++++++++++++++
>  lanserv/lan.conf             |  13 +++
>  10 files changed, 429 insertions(+), 3 deletions(-)
>  create mode 100644 lanserv/OpenIPMI/ipmbserv.h
>  create mode 100644 lanserv/ipmb_ipmi.c
> 
> -- 
> 2.1.2
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
