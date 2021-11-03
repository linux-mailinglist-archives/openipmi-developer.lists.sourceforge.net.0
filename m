Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E7114445E3
	for <lists+openipmi-developer@lfdr.de>; Wed,  3 Nov 2021 17:29:39 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1miJ8p-0001nK-Ji; Wed, 03 Nov 2021 16:29:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <robh@kernel.org>) id 1miJ8o-0001nD-88
 for openipmi-developer@lists.sourceforge.net; Wed, 03 Nov 2021 16:29:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZQYNfWB6LqV2HlG8TwsGh8QeUVW9N4s8zySUA+AKO8o=; b=mkcq0vaWkz6LmlsfHzYfWA2wnQ
 yqaTXJUVb6jnT5ogVFYop41ZFvZWY3gx4slwY01k3KC95gPuqMUI0141/4S0gPnEd/tXr6ozbz5T/
 cnX9VdZYNZMeUuGj2G+YOylldSXEdq42W/dUrbtqgLe0F/j35cowVamJsprR1iaeFrXc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ZQYNfWB6LqV2HlG8TwsGh8QeUVW9N4s8zySUA+AKO8o=; b=OwpN7+90dMi7qLSLMh8iotLCUw
 zGLJLNkvEvCSdj+Kyl57rNz3EU9BQxpzYfX6SYAtfUQaZhi892B4mqsT8Ek3aIQ1Nq6lKNnMYm80E
 Ct9QpK0ikMYmAU7W5VsqtFXxStfXRRfSR8C2vhsbm2NR1t637PnSNOjFqAnzOz5ZI1ts=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1miJ8n-000482-Ik
 for openipmi-developer@lists.sourceforge.net; Wed, 03 Nov 2021 16:29:34 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4BAB5610E5
 for <openipmi-developer@lists.sourceforge.net>;
 Wed,  3 Nov 2021 16:29:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1635956963;
 bh=xOABt8qeC9A9l4bh2g20t12RpjOx+xP+axBwdu8bH/I=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=sOCrnQn1XOtO/G7eEm72MDyK4Akei0cYCWPld84EwFTB3hGGpdFQ+W7lf1dNef3AO
 RcXcCxfGy1WRZDEZ7RROkD09KMxvtMrAGjj87+tlezQlYcmu0oKBam5UqIY/bYIvg9
 3QVwLE6ZhYKRtlfg93jl/iBO0U5uWQLhKSxFbsyjRQvgvspkR3md6WslIzqa7cvSJC
 eifmQBUg1R05A89iBrKIRlWb5kTaHwcaw9Ewc+rqb+WOTLAerJB5A0R2K4h6mFFqXt
 ZwRX/UUgUHMbxJCZGfzYTHBztwVDB/HDgDBLfBdp4U9YprIqEQc3I+nDHTM0oSGxyZ
 9yl0k/aoz8SKQ==
Received: by mail-ed1-f46.google.com with SMTP id g10so11333523edj.1
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 03 Nov 2021 09:29:23 -0700 (PDT)
X-Gm-Message-State: AOAM5316VtpYHIh8UDwA8oSSVHZyoL9KVtYrD5SDYFRgDr2oqEAUZ9PB
 E34C9c7xu6KB3g2PlSGuOlfO7jsiC8hFOAsK0A==
X-Google-Smtp-Source: ABdhPJwrgCpf59XLe8AzG7aA287qwiUonBjeXHhzxNgyHuhZcky+70ZcLVmG9yQtmb7fXidrSaVea6PBkVRNdzGFm1M=
X-Received: by 2002:a50:da06:: with SMTP id z6mr61608023edj.355.1635956959583; 
 Wed, 03 Nov 2021 09:29:19 -0700 (PDT)
MIME-Version: 1.0
References: <20211102203717.96794-1-jae.hyun.yoo@intel.com>
 <20211102203717.96794-6-jae.hyun.yoo@intel.com>
 <1635902437.654631.3880388.nullmailer@robh.at.kernel.org>
 <8db279c9-4c76-91a5-3617-a17effb2d103@linux.intel.com>
In-Reply-To: <8db279c9-4c76-91a5-3617-a17effb2d103@linux.intel.com>
From: Rob Herring <robh@kernel.org>
Date: Wed, 3 Nov 2021 11:29:08 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+SwCqFycKz4+agRsB3qr4Rbfra55Q6tNbMH2bNtoX+hA@mail.gmail.com>
Message-ID: <CAL_Jsq+SwCqFycKz4+agRsB3qr4Rbfra55Q6tNbMH2bNtoX+hA@mail.gmail.com>
To: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Nov 3,
 2021 at 11:08 AM Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
 wrote: > > Hi Rob, > > On 11/2/2021 6:20 PM, Rob Herring wrote: > > On Tue,
 02 Nov 2021 13:37:16 -0700, jae.hyun.yoo@intel.c [...] 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: ozlabs.org]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1miJ8n-000482-Ik
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
Cc: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 devicetree@vger.kernel.org, Corey Minyard <minyard@acm.org>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>, Andrew Jeffery <andrew@aj.id.au>,
 ChiaWei Wang <chiawei_wang@aspeedtech.com>, jae.hyun.yoo@intel.com,
 openipmi-developer@lists.sourceforge.net,
 Haiyue Wang <haiyue.wang@linux.intel.com>, Cedric Le Goater <clg@kaod.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, Nov 3, 2021 at 11:08 AM Jae Hyun Yoo
<jae.hyun.yoo@linux.intel.com> wrote:
>
> Hi Rob,
>
> On 11/2/2021 6:20 PM, Rob Herring wrote:
> > On Tue, 02 Nov 2021 13:37:16 -0700, jae.hyun.yoo@intel.com wrote:
> >> From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
> >>
> >> Add 'clocks' as a required property.
> >>
> >> Signed-off-by: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
> >> ---
> >> v1 -> v2:
> >> Changes sinve v1:
> >>   - Added 'clocks' property into kcs-bmc bindings using
> >>     'aspeed,ast2400-kcs-bmc.yaml' because it's not merged into
> >>     'aspeed-lpc.yaml' yet. The bindings merging could be done using a
> >>     separate patch later.
> >>
> >>   .../devicetree/bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml   | 7 +++++++
> >>   1 file changed, 7 insertions(+)
> >>
> >
> > Running 'make dtbs_check' with the schema in this patch gives the
> > following warnings. Consider if they are expected or the schema is
> > incorrect. These may not be new warnings.
> >
> > Note that it is not yet a requirement to have 0 warnings for dtbs_check.
> > This will change in the future.
> >
> > Full log is available here: https://patchwork.ozlabs.org/patch/1549943
> >
> >
> > kcs@114: 'clocks' is a required property
> >       arch/arm/boot/dts/aspeed-bmc-amd-ethanolx.dt.yaml
> >       arch/arm/boot/dts/aspeed-bmc-bytedance-g220a.dt.yaml
> >       arch/arm/boot/dts/aspeed-bmc-inspur-nf5280m6.dt.yaml
> >
> > kcs@24: 'clocks' is a required property
> >       arch/arm/boot/dts/aspeed-bmc-amd-ethanolx.dt.yaml
> >
> > kcs@28: 'clocks' is a required property
> >       arch/arm/boot/dts/aspeed-bmc-amd-ethanolx.dt.yaml
> >       arch/arm/boot/dts/aspeed-bmc-facebook-elbert.dt.yaml
> >       arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dt.yaml
> >
> > kcs@2c: 'clocks' is a required property
> >       arch/arm/boot/dts/aspeed-bmc-amd-ethanolx.dt.yaml
> >       arch/arm/boot/dts/aspeed-bmc-asrock-e3c246d4i.dt.yaml
> >       arch/arm/boot/dts/aspeed-bmc-bytedance-g220a.dt.yaml
> >       arch/arm/boot/dts/aspeed-bmc-facebook-elbert.dt.yaml
> >       arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dt.yaml
> >       arch/arm/boot/dts/aspeed-bmc-inspur-nf5280m6.dt.yaml
> >
>
> #4/6 in this patch adds 'clocks' into aspeed-g5.dtsi and aspeed-g6.dtsi
> as a default property and all above dts files include the dtsi file so
> these warning shouldn't be seen. Is it a result after applying all
> changes in this series or just after cherry picking #5/6 patch only?

Only patch 5 is applied.

> I tested 'dtbs_check' before submitting this series I tested it again
> and got the same good result like below.
>
> Aren't the above warnings false positive? Or did I miss something?

What you missed is this is an ABI. You cannot make something required
that was not required before. If the driver follows the schema and
makes 'clocks' required, then old DTBs with a new kernel will break.

It's possible that 'clocks' was always required or that it never
worked without clocks, then this change is okay. Looking at this
patch, I have no way to know that. The commit message has to explain
that. A commit message needs to answer WHY are you making the change.
You don't really need WHAT the change is as anyone can read the diff.

Rob


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
