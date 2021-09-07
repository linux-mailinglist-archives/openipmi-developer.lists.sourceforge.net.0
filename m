Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 812BD402EC4
	for <lists+openipmi-developer@lfdr.de>; Tue,  7 Sep 2021 21:09:51 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mNgTc-00015A-5m; Tue, 07 Sep 2021 19:09:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <robherring2@gmail.com>) id 1mNgTV-00014u-VI
 for openipmi-developer@lists.sourceforge.net; Tue, 07 Sep 2021 19:09:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=trlRlO2PDP2SXXVc3f4jwcB7bpX21ie4vEdTS6KQyak=; b=L6tIxhh4N0Y21HyqJlRKvxAaki
 y2vGSFAz0bPDg4QwbaxJRNFOcqTRqe3Yt58tuwp+FW+m6e19UV3c9BuUiJREjo7vlLhILQ823ZKKS
 jXBfxa0MGAoFze5bpHnz+yVAUBrfm0OTi/UpYp7+b9vtJQ7bEdiPVlUYjB9FSo5h4Rwc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=trlRlO2PDP2SXXVc3f4jwcB7bpX21ie4vEdTS6KQyak=; b=HRpytUF9g7LBhpOl9rhHGW7HsW
 GMp5GGkiKMO5wuFkkQ6+LJ4L3w/paQKuBya0unf7wS7neOirJC0/CsrDRzVXRWM1RIvsF+KuGeoL7
 U67viElXSvcjANeRW6ElOiFP/rvuLAPPcqCNhPZ1R2EmM/c5cihHQZ8JVOyBFDFuY6Mc=;
Received: from mail-ot1-f50.google.com ([209.85.210.50])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mNgTR-001R42-O4
 for openipmi-developer@lists.sourceforge.net; Tue, 07 Sep 2021 19:09:41 +0000
Received: by mail-ot1-f50.google.com with SMTP id
 c19-20020a9d6153000000b0051829acbfc7so364295otk.9
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 07 Sep 2021 12:09:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=trlRlO2PDP2SXXVc3f4jwcB7bpX21ie4vEdTS6KQyak=;
 b=X+1TuAlyqqGLRcWgBBr/EFbtmTsEpTGmHuHQO2Kql+RRjlzxHUhicDvDcCBZdJcncd
 8QPuaOWaH6sl+w2NI2uMxx9WPC0GhjcyxyHAWNgPj9Imy8VrjN4+u6tAXB/KiXNghA2R
 /sN2PVV68sg5AevIuPAfZou6q4BHdNBVUuYw5fn0Mc0e7oF7rohvF+W+9XXRgCJI3j0K
 9oyX212X2HeKJOBe+jGLH4nZfnvQx9qULXhXgRtNk6nhcd9aiXIxiGbxf6K1bC6LPra6
 TFOIIAmCXE/T6uGCy3bFJeiI7zhVSmmiG2TjXXMazwGseofumW15ivEbq6ewg0/HgnsY
 ceKw==
X-Gm-Message-State: AOAM531yc6n0EMmkNxmtuAm7rSr5yuF8LvY1xj0oEALwWk4jv61vIJfY
 emUvLJKzV2v64jW2tzYENA==
X-Google-Smtp-Source: ABdhPJx6U+yrfocikFT5c8wHUzft41MQTC/Td44IrKTXzxQHSNf0l07ifnEMNCTdSmSGJFV53c2eBg==
X-Received: by 2002:a9d:17c5:: with SMTP id j63mr16755881otj.208.1631041772179; 
 Tue, 07 Sep 2021 12:09:32 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id j10sm2287024oiw.32.2021.09.07.12.09.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Sep 2021 12:09:31 -0700 (PDT)
Received: (nullmailer pid 174912 invoked by uid 1000);
 Tue, 07 Sep 2021 19:09:30 -0000
Date: Tue, 7 Sep 2021 14:09:30 -0500
From: Rob Herring <robh@kernel.org>
To: Joel Stanley <joel@jms.id.au>
Message-ID: <YTe46lyQDfV6OzOc@robh.at.kernel.org>
References: <20210903015314.177987-1-joel@jms.id.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210903015314.177987-1-joel@jms.id.au>
X-Spam-Score: 0.8 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, 03 Sep 2021 11:23:14 +0930, Joel Stanley wrote: >
 The AST2600 has the same register set as the previous generation SoCs. > >
 Signed-off-by: Joel Stanley <joel@jms.id.au> > --- > .../devicetree [...]
 Content analysis details:   (0.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.50 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.50 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1mNgTR-001R42-O4
Subject: Re: [Openipmi-developer] [PATCH] ipmi: bt: Add ast2600 compatible
 string
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
Cc: devicetree@vger.kernel.org, Corey Minyard <minyard@acm.org>,
 Andrew Jeffery <andrew@aj.id.au>, Rob Herring <robh+dt@kernel.org>,
 openipmi-developer@lists.sourceforge.net, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Fri, 03 Sep 2021 11:23:14 +0930, Joel Stanley wrote:
> The AST2600 has the same register set as the previous generation SoCs.
> 
> Signed-off-by: Joel Stanley <joel@jms.id.au>
> ---
>  .../devicetree/bindings/ipmi/aspeed,ast2400-ibt-bmc.txt          | 1 +
>  drivers/char/ipmi/bt-bmc.c                                       | 1 +
>  2 files changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
