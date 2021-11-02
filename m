Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 498C5442DBB
	for <lists+openipmi-developer@lfdr.de>; Tue,  2 Nov 2021 13:23:01 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mhsoa-0005D3-M2; Tue, 02 Nov 2021 12:22:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tcminyard@gmail.com>) id 1mhsoY-0005Ct-EJ
 for openipmi-developer@lists.sourceforge.net; Tue, 02 Nov 2021 12:22:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=524j3weIMUBYVohdC3QFfF1dIv9YteXIYBPPUPdtNZI=; b=QhfVEuI52LIs7ZhXB0H9lbD7j3
 JB1urtznX/crHmt7F5LVBYgIyx+vk5CoSLwBM26uJJaaWJQqYCoHbf3ilxjZhTaVugj6FkGXdVwUk
 oEpsVapx5TtGqwjURDt7B49EhU6JKYyUHBXx8quaCiZyYvHv+zi+CUWbdwBvHOwl8x/Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=524j3weIMUBYVohdC3QFfF1dIv9YteXIYBPPUPdtNZI=; b=LTM22LSU70wklp1D/jHUO582P6
 svvFMJy4uWHJZjy0ojQNasGKP33bHKq3pFDTADGep6YYL7zIdt19JNd/dkjHvPWW0IBfu1tF/VK05
 Q+/SFrrRJLsCdQwIBR9OzZwDJx4AGc0/l95HHUIQgfvsswY6UvKpfs9OpvG4a94PQnzQ=;
Received: from mail-qv1-f49.google.com ([209.85.219.49])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mhsoU-00Erhv-EM
 for openipmi-developer@lists.sourceforge.net; Tue, 02 Nov 2021 12:22:54 +0000
Received: by mail-qv1-f49.google.com with SMTP id s9so10469898qvk.12
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 02 Nov 2021 05:22:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=524j3weIMUBYVohdC3QFfF1dIv9YteXIYBPPUPdtNZI=;
 b=gqgGeoKVcua9Eja33WGYMqhcVmZEluUj9WI0JxTO7JMhAdAoofYhm2DMUWOe17ogJR
 YDX/jP/LWDCq+gD2PsifYEkFXkAqj0TeWKjv8g6eL6UYjeUQ2IKoeMYqLuBZ42U5I4I0
 9YB2oOvhoBqvmDTHilv2hZdUT3u4Y+g1fFuYD5iKP41w6fXEFPbl5sF8HIK/+vQs53+v
 0hBOnuLTxg8XM4uvOOUvZEi5uUXE3Hs4IZPwaSGA5KLogHVkP//DzKiN2RrQd5AG2pyB
 u6hD3gNXIdU8EP/PVBGUbxmjidwtSM1TwsATBbtAriVFXAIbYgDbWGHxuaIa8AtPdR2j
 DpfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to;
 bh=524j3weIMUBYVohdC3QFfF1dIv9YteXIYBPPUPdtNZI=;
 b=XZ9OV/ya5vQAKilOhejO0ykWKvCt3rVNHUeBXgI8ERJ/yRdMZS9IldnMpndGBkn+06
 YS14iD36ANg2iQGe6YlaqnIO1Vjk4T7Qzvf5/5ODLNtXDsSOXhM4svROEPaT64jMOYB6
 3K6TDEbJHs17oSRo/jYWtWsRvfIgeZjXQNSe9+NkCQile9E+nl3BMXLUaO/4iiDyxlEm
 YA3j1A2g4B9CSu/U6lLvseInE0ujJSOG1hMsMR4/+30xENg8TyYtcyuDR+SxmV4aUw6u
 q4sF9BQBabkL6NNokBox/+00IPDlsm4mp9OOwG3XAYV4ziH8fawj8r2QB1Bu7wyqU+UT
 cnDA==
X-Gm-Message-State: AOAM530TlZYp19cv2aYoZiK7DfRaSBYIsF9/ySPB+XIuS29ihTM9g6lD
 ckUrLnczb85J/MODKvwc/jB9MW69Jw==
X-Google-Smtp-Source: ABdhPJwC+GW2Z14j8Ar7+l/yPNFCH4WawZMyhX5wmqOW3DdYy7QDet5X850by09ALefKzmA4gePHeQ==
X-Received: by 2002:a05:6214:2584:: with SMTP id
 fq4mr17116466qvb.53.1635855764249; 
 Tue, 02 Nov 2021 05:22:44 -0700 (PDT)
Received: from serve.minyard.net ([47.184.156.158])
 by smtp.gmail.com with ESMTPSA id i11sm48290qtq.44.2021.11.02.05.22.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 02 Nov 2021 05:22:43 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:b4e0:932d:f90c:fafb])
 by serve.minyard.net (Postfix) with ESMTPSA id C9A0B1800BA;
 Tue,  2 Nov 2021 12:22:42 +0000 (UTC)
Date: Tue, 2 Nov 2021 07:22:41 -0500
From: Corey Minyard <minyard@acm.org>
To: Joel Stanley <joel@jms.id.au>
Message-ID: <20211102122241.GK4667@minyard.net>
References: <20211101233751.49222-1-jae.hyun.yoo@intel.com>
 <CACPK8XfBi+jY5ftLqsEVXHe01SQBNpTSwo+WtXN3=YUQnXACtw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACPK8XfBi+jY5ftLqsEVXHe01SQBNpTSwo+WtXN3=YUQnXACtw@mail.gmail.com>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Nov 01, 2021 at 11:36:38PM +0000, Joel Stanley wrote:
 > On Mon, 1 Nov 2021 at 23:18, <jae.hyun.yoo@intel.com> wrote: > > > > From:
 Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com> > > > > Hello all [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.219.49 listed in list.dnswl.org]
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
 [209.85.219.49 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1mhsoU-00Erhv-EM
Subject: Re: [Openipmi-developer] [PATCH -next 0/4] Add LCLK control into
 Aspeed LPC sub drivers
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 devicetree <devicetree@vger.kernel.org>,
 Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 Zev Weiss <zev@bewilderbeest.net>, Andrew Jeffery <andrew@aj.id.au>,
 Rob Herring <robh+dt@kernel.org>, Jae Hyun Yoo <jae.hyun.yoo@intel.com>,
 Cedric Le Goater <clg@kaod.org>, openipmi-developer@lists.sourceforge.net,
 Haiyue Wang <haiyue.wang@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Mon, Nov 01, 2021 at 11:36:38PM +0000, Joel Stanley wrote:
> On Mon, 1 Nov 2021 at 23:18, <jae.hyun.yoo@intel.com> wrote:
> >
> > From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
> >
> > Hello all,
> >
> > This series is for appliying below fix to all Aspped LPC sub drivers.
> > https://lore.kernel.org/all/20201208091748.1920-1-wangzhiqiang.bj@bytedance.com/
> >
> > An LPC sub driver can be enabled without using the lpc-ctrl driver or it
> > can be registered ahead of lpc-ctrl depends on each system configuration and
> > this difference introduces that LPC can be enabled without heart beating of
> > LCLK so it causes improper handling on host interrupts when the host sends
> > interrupts in that time frame. Then kernel eventually forcibly disables the
> > interrupt with dumping stack and printing a 'nobody cared this irq' message
> > out.
> >
> > To prevent this issue, all LPC sub drivers should enable LCLK individually
> > so this patch adds clock control logic into the remaining Aspeed LPC sub
> > drivers.
> 
> Thanks for sending this out!
> 
> This will resolve a few of the issues we have in the issue tracker:
> 
> https://github.com/openbmc/linux/issues/210
> https://github.com/openbmc/linux/issues/130
> 
> The patches look good to me. I think you've just missed Corey's PR for
> v5.16, but I will stick them in the openbmc tree once they've had a
> review.

We can still get them in to 5.16 if it's important for that; this is a
bug fix, after all, and it's early.  I just need to know the urgency.

Get the Reviewed-by's in and add the bindings and I can get it into the
next tree for a bit, then I can submit.  We may be in rc1 by then, but
that's ok.

-corey

> 
> Cheers,
> 
> Joel
> 
> >
> > Please review this series.
> >
> > Thanks,
> > Jae
> >
> > Jae Hyun Yoo (4):
> >   ARM: dts: aspeed: add LCLK setting into LPC IBT node
> >   ipmi: bt: add clock control logic
> >   ARM: dts: aspeed: add LCLK setting into LPC KCS nodes
> >   ipmi: kcs_bmc_aspeed: add clock control logic
> >
> >  arch/arm/boot/dts/aspeed-g4.dtsi   |  1 +
> >  arch/arm/boot/dts/aspeed-g5.dtsi   |  5 +++++
> >  arch/arm/boot/dts/aspeed-g6.dtsi   |  5 +++++
> >  drivers/char/ipmi/bt-bmc.c         | 24 ++++++++++++++++++++++-
> >  drivers/char/ipmi/kcs_bmc_aspeed.c | 31 ++++++++++++++++++++++++++----
> >  5 files changed, 61 insertions(+), 5 deletions(-)
> >
> > --
> > 2.25.1
> >


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
