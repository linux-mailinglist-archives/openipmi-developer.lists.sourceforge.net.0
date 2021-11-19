Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B9E37456748
	for <lists+openipmi-developer@lfdr.de>; Fri, 19 Nov 2021 02:08:48 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mnsOO-000734-F1; Fri, 19 Nov 2021 01:08:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <robherring2@gmail.com>) id 1mnsON-00072t-4o
 for openipmi-developer@lists.sourceforge.net; Fri, 19 Nov 2021 01:08:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Nl07X1pqpx8geRh2cxLd4Ju9lF6KwEfmJ0AkwUACphE=; b=BMnZ6aEXvwEnLL2wFCcqWAfdFE
 h0QoH/S2ViZYGYY+vEFXKXenAxxF3xGMTdvhH/duvP/0Iow68nPDtfUYJem1Kglz6gBidAN8HxZPe
 O9W/Q5zmXGxKQCR0jPCpJyO5w2c6uYKVrnZIgr27a8ooUQHH5GXS2Q1e021Uq6ZOCucA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Nl07X1pqpx8geRh2cxLd4Ju9lF6KwEfmJ0AkwUACphE=; b=mtCn0SjN2xXEb6NLrmdVc6To2U
 OhKr9Tn1T+C/MdsR+RA7bKZkfwzgGAxm6HVglaPss48I1BQpsARW80Dgna2dAENbeuwQRCzVSpVYe
 kus7C7ZsSM8qFWC53X/zhBufuKWgWrJm7KNps3KZesrfeBIBHJ2pjGn9mxTpT0iv8/BE=;
Received: from mail-oo1-f47.google.com ([209.85.161.47])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mnsOJ-000VRr-IZ
 for openipmi-developer@lists.sourceforge.net; Fri, 19 Nov 2021 01:08:39 +0000
Received: by mail-oo1-f47.google.com with SMTP id
 w15-20020a4a9d0f000000b002c5cfa80e84so3153989ooj.5
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 18 Nov 2021 17:08:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Nl07X1pqpx8geRh2cxLd4Ju9lF6KwEfmJ0AkwUACphE=;
 b=QpKudBbfQTKb4CmoxSw1Jv2n25nV6V/sM2IAZbQH7FeUlYmzWH29MU1tTzGktffILT
 67QB4+zDM1kMaBFK6JjXdI6mJWgFpXge+8J5i4iH2M/fJ5ATaVkJ0/qsXFm4qY28krOt
 wfHjPf2ogt0rlj+olzXqjCwhGRUluz6vAN+w7RYBN8oBYQU2XHSMlPCIWGi35uHrhag1
 /62ffgJku1uC+Xx6NjDDEXPzX79kCUIh8hDtw/us7veAq0YbJ7TD+rOIH/xFlBibO75k
 nu0GYB3Vg7dLDYDJJfPOYE9DBbStJovDgvpCBYVaymcmPAcMuThQDMpNniFCYWh68QSA
 kGPA==
X-Gm-Message-State: AOAM532pBJpFjGVIE8ehBD8777ZNRETyiet9fLqAPTsgs15q3/VJcD1i
 2pQ2FB/mdUHvgltOERWUIS6jnURWvw==
X-Google-Smtp-Source: ABdhPJwnZGC6mR/cCWiBVybeXex5u15BXVqI6oLYPz4nNpWFmHoWYbOfOoCXlxh6JjWrV3eb8Xu00g==
X-Received: by 2002:a4a:d48c:: with SMTP id o12mr15793590oos.55.1637284106636; 
 Thu, 18 Nov 2021 17:08:26 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id n20sm299854ooe.7.2021.11.18.17.08.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Nov 2021 17:08:26 -0800 (PST)
Received: (nullmailer pid 2150728 invoked by uid 1000);
 Fri, 19 Nov 2021 01:08:25 -0000
Date: Thu, 18 Nov 2021 19:08:25 -0600
From: Rob Herring <robh@kernel.org>
To: jae.hyun.yoo@intel.com
Message-ID: <YZb5CWKRXdVUzaB6@robh.at.kernel.org>
References: <20211108190200.290957-1-jae.hyun.yoo@intel.com>
 <20211108190200.290957-6-jae.hyun.yoo@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211108190200.290957-6-jae.hyun.yoo@intel.com>
X-Spam-Score: 0.8 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, 08 Nov 2021 11:01:59 -0800, jae.hyun.yoo@intel.com
 wrote: > From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com> > > If LPC KCS
 driver is registered ahead of lpc-ctrl module, LPC KCS > hardware b [...]
 Content analysis details:   (0.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.161.47 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.161.47 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1mnsOJ-000VRr-IZ
Subject: Re: [Openipmi-developer] [PATCH v3 5/6] dt-bindings: ipmi: aspeed,
 kcs-bmc: add 'clocks' as a required property
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
Cc: devicetree@vger.kernel.org, Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>,
 Haiyue Wang <haiyue.wang@linux.intel.com>, Corey Minyard <minyard@acm.org>,
 linux-aspeed@lists.ozlabs.org, Andrew Jeffery <andrew@aj.id.au>,
 ChiaWei Wang <chiawei_wang@aspeedtech.com>, Rob Herring <robh+dt@kernel.org>,
 openipmi-developer@lists.sourceforge.net, linux-arm-kernel@lists.infradead.org,
 Cedric Le Goater <clg@kaod.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Mon, 08 Nov 2021 11:01:59 -0800, jae.hyun.yoo@intel.com wrote:
> From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
> 
> If LPC KCS driver is registered ahead of lpc-ctrl module, LPC KCS
> hardware block will be enabled without heart beating of LCLK until
> lpc-ctrl enables the LCLK. This issue causes improper handling on
> host interrupts when the host sends interrupts in that time frame.
> Then kernel eventually forcibly disables the interrupt with
> dumping stack and printing a 'nobody cared this irq' message out.
> 
> To prevent this issue, all LPC sub drivers should enable LCLK
> individually so this patch adds 'clocks' property as one of
> required properties to enable the LCLK by the LPC KCS driver.
> 
> Note: dtsi change in this patch series should be applied along with,
> and dtbs should be re-compiled after applying this series since
> it's adding a new required property otherwise the driver will not
> be probed correctly.
> 
> Signed-off-by: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
> ---
> v2 -> v3:
>  * Made commit message more descriptive.
> 
> v1 -> v2:
> Changes sinve v1:
>  * Added 'clocks' property into kcs-bmc bindings using
>    'aspeed,ast2400-kcs-bmc.yaml' because it's not merged into
>    'aspeed-lpc.yaml' yet. The bindings merging could be done using a
>    separate patch later.
> 
>  .../devicetree/bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml   | 7 +++++++
>  1 file changed, 7 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
