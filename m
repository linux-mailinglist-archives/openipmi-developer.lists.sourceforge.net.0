Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 11CF9456744
	for <lists+openipmi-developer@lfdr.de>; Fri, 19 Nov 2021 02:08:18 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mnsNr-0005XJ-TQ; Fri, 19 Nov 2021 01:08:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <robherring2@gmail.com>) id 1mnsNp-0005XD-Ov
 for openipmi-developer@lists.sourceforge.net; Fri, 19 Nov 2021 01:08:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=J7xF1Ruy1Zsr5uKClLiAhJlFdT48GSxSjpTzyXQZLA0=; b=CM28br6Q8scDUqcCdwrk2ZQMPa
 mu9sJMzy+V/0HdFOUz1fIVa7CZXlkP0wtY4IcDf3t3ps9Nl3BooXNytDIjN4kQiRdJMFMFY0pk8nK
 ZVMhPc1OZgM6OI3doCWZWzRWFovTtWMe22neCulWi99nD7mP9KXhJ8uyKL0Hi9T60cgI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=J7xF1Ruy1Zsr5uKClLiAhJlFdT48GSxSjpTzyXQZLA0=; b=ZSC4w65ShjVR1q+lfLfT0ywoEk
 Qf3p4/Nynp8NcvCxultJV2wpeImnafc1Bl4T1PCymoPHtw3L93iLNOnbOsZ0nSyfgayx4CgPMuZVH
 gIUvMU26iWedcTliIUHpUFI34wMEH6K4MSy9+npifbeAEH4gSmjqQOEktTEUsm9hvmWk=;
Received: from mail-oo1-f51.google.com ([209.85.161.51])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mnsNl-000VQe-BC
 for openipmi-developer@lists.sourceforge.net; Fri, 19 Nov 2021 01:08:05 +0000
Received: by mail-oo1-f51.google.com with SMTP id
 d1-20020a4a3c01000000b002c2612c8e1eso3130626ooa.6
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 18 Nov 2021 17:08:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=J7xF1Ruy1Zsr5uKClLiAhJlFdT48GSxSjpTzyXQZLA0=;
 b=qcKNff/Wn2Bhudqb3e4MCOJfPq+SvhlGpZ+1I3gHQ1Kw8I5bs39SL7NylUe9O3/uel
 IZavzF84H4QPSVZPyr8wNltdRWfc6KoHhBeuOQqyz/dd18+4Akoge/XVT2whZJPFxlxr
 TDy/2qz6eW4ousyYpzREOzV42IOSOArbkeyC86VzYD+xiOua/eED9nctaV2uxnJmPh9v
 ixtt/dlyG3/Javr/mQ0ut1hiUMMmHqnHWfu4xmyNms4AB+Yo3upu5W1I2R73LPC+Lop1
 rnItnMalyls1TRW/Mcj46Ge/l7r9TWq+SJ73R03FfPH625Qh9Uu8tPkRR2mhE6x5kSNU
 KHDA==
X-Gm-Message-State: AOAM533uUTOJ24ZxVe2Bvvp42Jx/3dJ11E6KVx066XSIlaf2utNRF2K1
 SPwfGPxnpUKYhACp3Tm3Pg==
X-Google-Smtp-Source: ABdhPJzKo6/FJsF2qo0j7tAC6njlrJY9RLRXANHnK2WNurzqGE9JuI5HAEV1whTDVB7SAhWJkWjctQ==
X-Received: by 2002:a4a:d284:: with SMTP id h4mr15642824oos.31.1637284070896; 
 Thu, 18 Nov 2021 17:07:50 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id x16sm287467otq.47.2021.11.18.17.07.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Nov 2021 17:07:50 -0800 (PST)
Received: (nullmailer pid 2149582 invoked by uid 1000);
 Fri, 19 Nov 2021 01:07:49 -0000
Date: Thu, 18 Nov 2021 19:07:49 -0600
From: Rob Herring <robh@kernel.org>
To: jae.hyun.yoo@intel.com
Message-ID: <YZb45WLaOzRtW9+g@robh.at.kernel.org>
References: <20211108190200.290957-1-jae.hyun.yoo@intel.com>
 <20211108190200.290957-3-jae.hyun.yoo@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211108190200.290957-3-jae.hyun.yoo@intel.com>
X-Spam-Score: 0.8 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, 08 Nov 2021 11:01:56 -0800, jae.hyun.yoo@intel.com
 wrote: > From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com> > > If LPC BT
 driver is registered ahead of lpc-ctrl module, LPC BT > hardware blo [...]
 Content analysis details:   (0.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.161.51 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.161.51 listed in wl.mailspike.net]
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
X-Headers-End: 1mnsNl-000VQe-BC
Subject: Re: [Openipmi-developer] [PATCH v3 2/6] dt-bindings: ipmi: bt-bmc:
 add 'clocks' as a required property
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
 linux-aspeed@lists.ozlabs.org, Corey Minyard <minyard@acm.org>,
 Andrew Jeffery <andrew@aj.id.au>, ChiaWei Wang <chiawei_wang@aspeedtech.com>,
 Cedric Le Goater <clg@kaod.org>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, openipmi-developer@lists.sourceforge.net,
 Haiyue Wang <haiyue.wang@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Mon, 08 Nov 2021 11:01:56 -0800, jae.hyun.yoo@intel.com wrote:
> From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
> 
> If LPC BT driver is registered ahead of lpc-ctrl module, LPC BT
> hardware block will be enabled without heart beating of LCLK until
> lpc-ctrl enables the LCLK. This issue causes improper handling on
> host interrupts when the host sends interrupts in that time frame.
> Then kernel eventually forcibly disables the interrupt with
> dumping stack and printing a 'nobody cared this irq' message out.
> 
> To prevent this issue, all LPC sub drivers should enable LCLK
> individually so this patch adds 'clocks' property as one of
> required properties to enable the LCLK by the LPC IBT driver.
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
>  * Added 'clocks' property into ibt bindings using
>    'aspeed,ast2400-ibt-bmc.txt' because it's not merged into
>    'aspeed-lpc.yaml' yet. The bindings merging could be done using a
>    separate patch later.
> 
>  .../devicetree/bindings/ipmi/aspeed,ast2400-ibt-bmc.txt         | 2 ++
>  1 file changed, 2 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
