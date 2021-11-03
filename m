Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8022F443B26
	for <lists+openipmi-developer@lfdr.de>; Wed,  3 Nov 2021 02:52:47 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mi5SF-0004Rl-2L; Wed, 03 Nov 2021 01:52:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tcminyard@gmail.com>) id 1mi5SD-0004Rb-PQ
 for openipmi-developer@lists.sourceforge.net; Wed, 03 Nov 2021 01:52:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=W2HU4w7GnhKTte65isyHpt7yAXFNwuaPGGZjXYZzIto=; b=Cek5/eOe4svaOC7oSaQRuYa2yj
 /HAIFKAf2gBcmiy+K7kfj9iR98DjgJmVtG1erkhXTqpn1WILYYBgGeAPxkx+swO0Ct/K4LxpkPMju
 RrCzZdejJx21waDzLocWzdPklt3QLK83MA5c6sJer10rLl5zdADPo1g13kj2vwnv9s7s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=W2HU4w7GnhKTte65isyHpt7yAXFNwuaPGGZjXYZzIto=; b=EnE9DTPirbaOwH3HcWhVAYqhq2
 jIiYN5mMRhAX1f2Jd70PhgCo6lKRwxUHSSjmMvMjhWpnA3iP4jxI2eaj5D0IguDTqh7OqtRMmNVyc
 7AyVGza/O33MIgJxHddSM7SN1CGumn8634OE/N0x3R3T9dh9ly0QTYPsSqSgc/ysXFQg=;
Received: from mail-qv1-f42.google.com ([209.85.219.42])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mi5SB-0004dv-Kt
 for openipmi-developer@lists.sourceforge.net; Wed, 03 Nov 2021 01:52:41 +0000
Received: by mail-qv1-f42.google.com with SMTP id bu11so1155894qvb.0
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 02 Nov 2021 18:52:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=W2HU4w7GnhKTte65isyHpt7yAXFNwuaPGGZjXYZzIto=;
 b=n0H27rJwgjdtjio7lxmzwV+ku2ClAqJg7OCr/K1KcAj+6e/BCrGJwbWJu43YR3BQI2
 3ZPoZhGZ7jA/GKubBzn5kbMELmhasgtMfCf/7JXMgtEJdAtaxoA8zt6sspI1czgw3Vzy
 3kgcg6ERstIMCbGylbyonfNK+UUj5e5yx/dgWyf2InCX1hJJ+RXqCJimBw2hiIDUcxDb
 GDf/MUV7rQThVUC6nfMGGUJX0Q+VZk7gdMeW3ELI8aqpJsN/y9ashfXGqWm84zuqmCLe
 IqvyrIO9boJcz+t603XxmJWkl38M9civl35afuasHfx7b3IDkqWv/AyysASTfbAwMxuU
 +1iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to;
 bh=W2HU4w7GnhKTte65isyHpt7yAXFNwuaPGGZjXYZzIto=;
 b=jQYgMLFuO+EHuZSoDpLWeMMp6STtHzsRS5xBh854JaGN21Ss0KcOkKMZZ6eD/qlPHi
 FFssMiAlOX1tQbkQ3GbLENPf9J+JHCu09pdifiCumXOPvFSilgm//+0ggWEE1Cwe4CF2
 wLJLqpWEaGLTZBLIf4Tpvcd1zO7bucXyMqkdsXgW2hDoJ9vJv5A+wu1D2eOcUZI2wROK
 IrDOApl1XrWF9ePMmwIoYBemyEd0ECEcaW5Ar3h3MWE5pX1kc0Rmi23jc0musi44QMZt
 cp3EXwerGnL5f6uQVTsYwC5CcSCwx4kgTmJklBi79ysSt6zV0agNWucgzm+Xt1KXOsHe
 rxFg==
X-Gm-Message-State: AOAM530LiHyU5qMHDD6nMFuL80dfrTtUdxMHWlM/HOC7pFqgkfe1Acxu
 wcL4z2ZM7IdoQXp9fiOL498Mjf0C2ovR
X-Google-Smtp-Source: ABdhPJxAZb3DCF8bmbLHwMF6GRKQh7wEROD8SIINO6DSBkTwPrzFSqU3DONEfQuaeO92GHCycangsA==
X-Received: by 2002:ac8:5745:: with SMTP id 5mr18639476qtx.37.1635904350437;
 Tue, 02 Nov 2021 18:52:30 -0700 (PDT)
Received: from serve.minyard.net ([47.184.156.158])
 by smtp.gmail.com with ESMTPSA id o10sm596759qtx.43.2021.11.02.18.52.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 02 Nov 2021 18:52:30 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:b4e0:932d:f90c:fafb])
 by serve.minyard.net (Postfix) with ESMTPSA id 009481800B9;
 Wed,  3 Nov 2021 01:52:28 +0000 (UTC)
Date: Tue, 2 Nov 2021 20:52:27 -0500
From: Corey Minyard <minyard@acm.org>
To: Rob Herring <robh@kernel.org>
Message-ID: <20211103015227.GO4667@minyard.net>
References: <20211102203717.96794-1-jae.hyun.yoo@intel.com>
 <20211102203717.96794-6-jae.hyun.yoo@intel.com>
 <1635902437.654631.3880388.nullmailer@robh.at.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1635902437.654631.3880388.nullmailer@robh.at.kernel.org>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Nov 02, 2021 at 08:20:37PM -0500, Rob Herring wrote:
 > On Tue, 02 Nov 2021 13:37:16 -0700, jae.hyun.yoo@intel.com wrote: > > From:
 Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com> > > > > Add 'cloc [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.42 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: ozlabs.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.219.42 listed in list.dnswl.org]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1mi5SB-0004dv-Kt
Subject: Re: [Openipmi-developer] [PATCH -next v2 5/6] dt-bindings: ipmi:
 aspeed, kcs-bmc: add 'clocks' as a required property
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
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>, ChiaWei Wang <chiawei_wang@aspeedtech.com>,
 Rob Herring <robh+dt@kernel.org>, jae.hyun.yoo@intel.com,
 openipmi-developer@lists.sourceforge.net,
 Haiyue Wang <haiyue.wang@linux.intel.com>, Cedric Le Goater <clg@kaod.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue, Nov 02, 2021 at 08:20:37PM -0500, Rob Herring wrote:
> On Tue, 02 Nov 2021 13:37:16 -0700, jae.hyun.yoo@intel.com wrote:
> > From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
> > 
> > Add 'clocks' as a required property.
> > 
> > Signed-off-by: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
> > ---
> > v1 -> v2:
> > Changes sinve v1:
> >  - Added 'clocks' property into kcs-bmc bindings using
> >    'aspeed,ast2400-kcs-bmc.yaml' because it's not merged into
> >    'aspeed-lpc.yaml' yet. The bindings merging could be done using a
> >    separate patch later.
> > 
> >  .../devicetree/bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml   | 7 +++++++
> >  1 file changed, 7 insertions(+)
> > 
> 
> Running 'make dtbs_check' with the schema in this patch gives the
> following warnings. Consider if they are expected or the schema is
> incorrect. These may not be new warnings.
> 
> Note that it is not yet a requirement to have 0 warnings for dtbs_check.
> This will change in the future.
> 
> Full log is available here: https://patchwork.ozlabs.org/patch/1549943
> 

From the code, I think this change will break all these platforms, as
the initialization of kcs will fail without the clock property.  I'm
going to pull this out until it gets sorted out.

Also, could you rebase on the latest kernel when submitting next time?
There was a minor thing I had to fix up.

-corey

> 
> kcs@114: 'clocks' is a required property
> 	arch/arm/boot/dts/aspeed-bmc-amd-ethanolx.dt.yaml
> 	arch/arm/boot/dts/aspeed-bmc-bytedance-g220a.dt.yaml
> 	arch/arm/boot/dts/aspeed-bmc-inspur-nf5280m6.dt.yaml
> 
> kcs@24: 'clocks' is a required property
> 	arch/arm/boot/dts/aspeed-bmc-amd-ethanolx.dt.yaml
> 
> kcs@28: 'clocks' is a required property
> 	arch/arm/boot/dts/aspeed-bmc-amd-ethanolx.dt.yaml
> 	arch/arm/boot/dts/aspeed-bmc-facebook-elbert.dt.yaml
> 	arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dt.yaml
> 
> kcs@2c: 'clocks' is a required property
> 	arch/arm/boot/dts/aspeed-bmc-amd-ethanolx.dt.yaml
> 	arch/arm/boot/dts/aspeed-bmc-asrock-e3c246d4i.dt.yaml
> 	arch/arm/boot/dts/aspeed-bmc-bytedance-g220a.dt.yaml
> 	arch/arm/boot/dts/aspeed-bmc-facebook-elbert.dt.yaml
> 	arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dt.yaml
> 	arch/arm/boot/dts/aspeed-bmc-inspur-nf5280m6.dt.yaml
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
