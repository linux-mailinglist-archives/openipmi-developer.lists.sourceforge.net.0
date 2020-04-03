Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D033719D745
	for <lists+openipmi-developer@lfdr.de>; Fri,  3 Apr 2020 15:08:53 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1jKM44-0001mo-7J; Fri, 03 Apr 2020 13:08:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1jKM43-0001mV-AZ
 for openipmi-developer@lists.sourceforge.net; Fri, 03 Apr 2020 13:08:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tU19EWZx8u2e2uV3dXR0FXwxIY/5U2XJW8CrROjNUIg=; b=IUckApzsrrevV3bETrbSLa8MB1
 2aoqz5+m/oJNR/5koXJczf/4enFB0yJz/nnufSsEL4CQaiuorB+pkKyIWzbw+O2+uzclIsYE+HhQ8
 qbGVLNbNPyFPXvqGt3AhADe1aVprqYbI8ApGm83yZqSJDDvZDCh5pUJePJvMltd7s8CY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=tU19EWZx8u2e2uV3dXR0FXwxIY/5U2XJW8CrROjNUIg=; b=Yy3dlBe/qiahBrQQJFkatr24KW
 NmMiilgXhQ4QEHQr1Xg3yl01PawJn5wyVupcCsV6kPpf9NezAZaFQ0lfFsoyjTqa1rCtBFjcwrwCT
 3Rgjyr1il27KgwG5JvkahEZD3YrADpp0EzEgXExoFtBdyqdsoZA/wxrCEw1er+XWvojA=;
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jKM41-000Qx8-OQ
 for openipmi-developer@lists.sourceforge.net; Fri, 03 Apr 2020 13:08:51 +0000
Received: by mail-ot1-f68.google.com with SMTP id a6so7129997otb.10
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 03 Apr 2020 06:08:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=tU19EWZx8u2e2uV3dXR0FXwxIY/5U2XJW8CrROjNUIg=;
 b=fmq9EUdhdn++eKwVsAKvmtE6dEOtCu87AzVYsS8RdLDIW9lhNi2aEJOROLq/8YC0cp
 0NtDqpQaHOt02earYciLZFbMHdvr0oO3V04QvdXy8xdw5jfNZwJ5rCWYTGYEinHScC0b
 QB8YAgWxNnOWYx7UZw1/Vcp2HZ7xe8MlU3mY4egH5fsefs7+83mEZoF+87uWHAG8PASB
 6HPQCf64opNRU+9Pm7PJ1ulZVviDAVR2DvSb/2hB+xM2pqJ2/0yRYbQALF2JO9kd/UH+
 e+Qo4mr05Nu4mst9MWQVjXl94DWlXTSQ/5MNFErnwh7ht2gB6EKnTFdrMEvc9HFjVSrR
 O+2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=tU19EWZx8u2e2uV3dXR0FXwxIY/5U2XJW8CrROjNUIg=;
 b=na3Nb7oG7jRaMIN3EvO5foMr7393k79V11YoNG4ZnPo4NZ4Jt6df1DhuwrvaRBAlMG
 r2U+HzVJGwlTI99yAAJzSa+u2NEFGNkRv810hUN2tLC+1WECApjJkR8z0PyMs26g8/4C
 mrePcf3c9Ol5ehSPg8KlHHYSUc/gKilIUq8xugK0QHDxW7qQvZ16vB6qFgumKpimpmoJ
 yqgXWOx/6XIhUHUoyKxidQQ2hm7+K1OYlFmbuWd89MMsLpeqGkhUnVAC/Q0gJKcjQW+W
 aem+1ZKfHK65VC+Uz9FMaL5ikK8gCGzw3bQJndOAx6grMxluGEylbaDebuaBoN1h9XEI
 SplQ==
X-Gm-Message-State: AGi0PuZPHVgG4JROjaXTwExHRX42xsFbq7lIkZZnzI3p+KwzHx8SeWHN
 oBN3QE9wnmyenMI9W9KiHQ==
X-Google-Smtp-Source: APiQypJOH5J7K90OLTvE4up+WlGYwk/WIHDu36NWekh7qDcyAQo4WCvI75rBiKzmy/uvySr5/C0L0A==
X-Received: by 2002:a9d:644:: with SMTP id 62mr5581256otn.177.1585919323801;
 Fri, 03 Apr 2020 06:08:43 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id 12sm2192250oii.54.2020.04.03.06.08.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Apr 2020 06:08:42 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:8b39:c3f3:f502:5c4e])
 by serve.minyard.net (Postfix) with ESMTPSA id 0586B18016D;
 Fri,  3 Apr 2020 13:08:42 +0000 (UTC)
Date: Fri, 3 Apr 2020 08:08:40 -0500
From: Corey Minyard <minyard@acm.org>
To: Andrew Jeffery <andrew@aj.id.au>
Message-ID: <20200403130840.GR2910@minyard.net>
References: <cover.fe20dfec1a7c91771c6bb574814ffb4bb49e2136.1576462051.git-series.andrew@aj.id.au>
 <7734002a-181e-4baf-b9a3-af66894acc16@www.fastmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7734002a-181e-4baf-b9a3-af66894acc16@www.fastmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.68 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jKM41-000Qx8-OQ
Subject: Re: [Openipmi-developer] [PATCH v2 0/3] ipmi: kcs-bmc: Rework
 bindings to clean up DT warnings
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-aspeed@lists.ozlabs.org, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 openipmi-developer@lists.sourceforge.net,
 Haiyue Wang <haiyue.wang@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Fri, Apr 03, 2020 at 02:20:21PM +1030, Andrew Jeffery wrote:
> 
> 
> On Mon, 16 Dec 2019, at 12:57, Andrew Jeffery wrote:
> > Hello,
> > 
> > This is a short series reworking the devicetree binding and driver for the
> > ASPEED BMC KCS devices. With the number of supported ASPEED BMC devicetrees the
> > changes enable removal of more than 100 lines of warning output from dtc.
> > 
> > v1 can be found here:
> > 
> > https://lore.kernel.org/lkml/cover.5630f63168ad5cddf02e9796106f8e086c196907.1575376664.git-series.andrew@aj.id.au/
> > 
> > v2 cleans up the commit message of 2/3 and changes the name of the property
> > governing the LPC IO address for the KCS devices.
> 
> Ping?

Sorry, I've been busy.  I've looked this over and it seems ok, and it's
in my next tree.

Thanks,

-corey


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
