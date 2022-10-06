Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 23A7B5F6958
	for <lists+openipmi-developer@lfdr.de>; Thu,  6 Oct 2022 16:10:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1ogRZm-0002EY-Cx;
	Thu, 06 Oct 2022 14:10:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcminyard@gmail.com>) id 1ogRZk-0002EF-1m
 for openipmi-developer@lists.sourceforge.net;
 Thu, 06 Oct 2022 14:10:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ntnmdCz7v5r64kcnWi8DSkoYbZLsQCVuJJM9qyrDCnw=; b=RJB+3+gy8s21yfBxd380LWcU8U
 UN7YsTmaZZFWzqfvaFc3jdz1K5w4QJa7co5IbDws9zWp5r1K3gVFkqgfIlFxlWCVMk/lNjrlFWZ2t
 QEkmvHloEX7Lr0OrxnoV6/X+jUcPQbGDN95t7FJace8t+g6/BVDNnCnTRZ4ahlhbb/yg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ntnmdCz7v5r64kcnWi8DSkoYbZLsQCVuJJM9qyrDCnw=; b=Dat+bqLAxtZDZreg8MwILgK4jl
 5wHN8XywM13Qz06c+4EcEvgPVvNoLrBz40cMV8V4T03FbnFVu9r+Ga4zyf3wV1QL52kovre7ThMo2
 HmUws37znVhgjEjC5axinCEaV2+3KM2QXIMOphIXjhM1ki4wG8Xk45ULYIoTDtyYk3Xc=;
Received: from mail-qk1-f179.google.com ([209.85.222.179])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ogRZf-0003SA-VT for openipmi-developer@lists.sourceforge.net;
 Thu, 06 Oct 2022 14:10:11 +0000
Received: by mail-qk1-f179.google.com with SMTP id x18so1061164qkn.6
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 06 Oct 2022 07:10:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ntnmdCz7v5r64kcnWi8DSkoYbZLsQCVuJJM9qyrDCnw=;
 b=B/MELwvxGHOUB9n/4IZqtXNP45/GUA/qzSkuclVSpXk/hHNETuFosn1BksqfdAO6YC
 Uk7s0kBfRcQno51w58ZZeR1JRQ1FTx0KFzVowH5ahSpQFM00sjiLAqu/8a/6V2kjdyFE
 BOaF5+dyP6N9n6rqssedaIY+lIsodO8jDsqxqQBbqPohnWSKRIraCSTiiKRhNJUswxrA
 4OuQOHS8dxZNaz8aBi+/Q0+h81aVB2UEnUYx43vpmtGk6gpAbkgxX8X/+FJPS0zlByMk
 QEl/foNsH27xCm2+Aj2r75obbZHv8GOoPql58jPWQ960t+qDJUHVZ0NHmJQhg+RSFZuv
 gUTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=ntnmdCz7v5r64kcnWi8DSkoYbZLsQCVuJJM9qyrDCnw=;
 b=VEZv2QF700oTDkfpnEGoTZUprdooFD4oLDpIcYUuX7RUhf5liZUuvMY4FcXaC4s+mj
 GC2R2LEV63wjHwF6UH1OaJCkqkWhwvGgtRkyAGS3fvc2F6VU8PaXJhOK/ldpLDiXMv13
 S8913mSq4o5Thr+3Lro0nNf2xSzxSc4k7QA4FE6gYYx9Dc0aQcznkS4rgBeKq299Q062
 MkgCec0w7c9Ze3Egiz+jnC1/4jYDyqGDYph7Cotak2qhBTR19qE7Kl0r1L1CrieOcVHv
 obYCcyhH9YBvEgACgAlmMbwORXQt9tgcMkO9J33pdE2vJAcaweHw5TGCEsWImRG2ULwG
 2kCw==
X-Gm-Message-State: ACrzQf1rTIwJGPjVt4LUT2EivWik/cdX2jG58opzQ4M0gA3Y8aEvC9PF
 0oRP293+7WXNHuSYjl9a/RGgXFr8ENyY
X-Google-Smtp-Source: AMsMyM73nX69TZE1+MgUVtlQx7xVnxr/lUPIFB2FR88zpn3YmI15D7PxjegZ0vi/YooQMgojpkOXKQ==
X-Received: by 2002:a37:9302:0:b0:6ce:3765:eb95 with SMTP id
 v2-20020a379302000000b006ce3765eb95mr130459qkd.177.1665065401988; 
 Thu, 06 Oct 2022 07:10:01 -0700 (PDT)
Received: from serve.minyard.net ([47.184.185.126])
 by smtp.gmail.com with ESMTPSA id
 o18-20020a05620a111200b006b98315c6fbsm3686391qkk.1.2022.10.06.07.10.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 Oct 2022 07:10:01 -0700 (PDT)
Received: from dell1.minyard.net (unknown [IPv6:2001:470:b8f6:1d::35])
 by serve.minyard.net (Postfix) with ESMTPSA id 8D0D2180015;
 Thu,  6 Oct 2022 14:09:59 +0000 (UTC)
Date: Thu, 6 Oct 2022 09:09:57 -0500
From: Corey Minyard <minyard@acm.org>
To: Andrew Jeffery <andrew@aj.id.au>
Message-ID: <Yz7htdRvb+IhU060@dell1.minyard.net>
References: <20220812144741.240315-1-andrew@aj.id.au>
 <CACPK8XdnFPXZuzAaSMOUnV6ng9y2_ZMcAff12q8Zxvr2HJZy-w@mail.gmail.com>
 <f6a85e5e-a3b1-4e5c-9db6-1222dcabd780@app.fastmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f6a85e5e-a3b1-4e5c-9db6-1222dcabd780@app.fastmail.com>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Oct 06, 2022 at 01:36:51PM +1030,
 Andrew Jeffery wrote:
 > > > On Thu, 6 Oct 2022, at 10:20, Joel Stanley wrote: > > On Fri, 12 Aug
 2022 at 14:48, Andrew Jeffery <andrew@aj.id.au> wrote: > >> > [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.179 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.179 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1ogRZf-0003SA-VT
Subject: Re: [Openipmi-developer] [PATCH] ipmi: kcs: Poll OBF briefly to
 reduce OBE latency
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
Cc: linux-aspeed@lists.ozlabs.org, openbmc@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Thu, Oct 06, 2022 at 01:36:51PM +1030, Andrew Jeffery wrote:
> 
> 
> On Thu, 6 Oct 2022, at 10:20, Joel Stanley wrote:
> > On Fri, 12 Aug 2022 at 14:48, Andrew Jeffery <andrew@aj.id.au> wrote:
> >>
> >> The ASPEED KCS devices don't provide a BMC-side interrupt for the host
> >> reading the output data register (ODR). The act of the host reading ODR
> >> clears the output buffer full (OBF) flag in the status register (STR),
> >> informing the BMC it can transmit a subsequent byte.
> >>
> >> On the BMC side the KCS client must enable the OBE event *and* perform a
> >> subsequent read of STR anyway to avoid races - the polling provides a
> >> window for the host to read ODR if data was freshly written while
> >> minimising BMC-side latency.
> >>
> >
> > Fixes...?
> 
> Is it a fix though? It's definitely an *improvement* in behaviour, but 
> the existing behaviour also wasn't *incorrect*, just kinda unfortunate 
> under certain timings? Dunno. I'm probably splitting hairs.
> 
> In any case, if we do want a fixes line:
> 
> Fixes: 28651e6c4237 ("ipmi: kcs_bmc: Allow clients to control KCS IRQ state")

I added the Fixes and Joel's review.

Thanks,

-corey

> 
> >
> >> Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
> >
> > Reviewed-by: Joel Stanley <joel@jms.id.au>
> 
> Thanks!
> 
> >
> >> ---
> >>  drivers/char/ipmi/kcs_bmc_aspeed.c | 24 +++++++++++++++++++++---
> >>  1 file changed, 21 insertions(+), 3 deletions(-)
> >>
> >> diff --git a/drivers/char/ipmi/kcs_bmc_aspeed.c b/drivers/char/ipmi/kcs_bmc_aspeed.c
> >> index cdc88cde1e9a..417e5a3ccfae 100644
> >> --- a/drivers/char/ipmi/kcs_bmc_aspeed.c
> >> +++ b/drivers/char/ipmi/kcs_bmc_aspeed.c
> >> @@ -399,13 +399,31 @@ static void aspeed_kcs_check_obe(struct timer_list *timer)
> >>  static void aspeed_kcs_irq_mask_update(struct kcs_bmc_device *kcs_bmc, u8 mask, u8 state)
> >>  {
> >>         struct aspeed_kcs_bmc *priv = to_aspeed_kcs_bmc(kcs_bmc);
> >> +       int rc;
> >> +       u8 str;
> >
> > str is status, it would be good to spell that out in full.
> 
> I guess if it trips enough people up we can rename it later.
> 
> >
> >>
> >>         /* We don't have an OBE IRQ, emulate it */
> >>         if (mask & KCS_BMC_EVENT_TYPE_OBE) {
> >> -               if (KCS_BMC_EVENT_TYPE_OBE & state)
> >> -                       mod_timer(&priv->obe.timer, jiffies + OBE_POLL_PERIOD);
> >> -               else
> >> +               if (KCS_BMC_EVENT_TYPE_OBE & state) {
> >> +                       /*
> >> +                        * Given we don't have an OBE IRQ, delay by polling briefly to see if we can
> >> +                        * observe such an event before returning to the caller. This is not
> >> +                        * incorrect because OBF may have already become clear before enabling the
> >> +                        * IRQ if we had one, under which circumstance no event will be propagated
> >> +                        * anyway.
> >> +                        *
> >> +                        * The onus is on the client to perform a race-free check that it hasn't
> >> +                        * missed the event.
> >> +                        */
> >> +                       rc = read_poll_timeout_atomic(aspeed_kcs_inb, str,
> >> +                                                     !(str & KCS_BMC_STR_OBF), 1, 100, false,
> >> +                                                     &priv->kcs_bmc, priv->kcs_bmc.ioreg.str);
> >> +                       /* Time for the slow path? */
> >
> > The mod_timer is the slow path? The question mark threw me.
> 
> Yeah, mod_timer() is the slow path; read_poll_timeout_atomic() is the 
> fast path and we've exhausted the time we're willing to wait there if 
> we get -ETIMEDOUT.
> 
> The comment was intended as a description for the question posed by the 
> condition. It made sense in my head but maybe it's confusing more than 
> it is enlightening?
> 
> Andrew
> 
> >
> >> +                       if (rc == -ETIMEDOUT)
> >> +                               mod_timer(&priv->obe.timer, jiffies + OBE_POLL_PERIOD);
> >> +               } else {
> >>                         del_timer(&priv->obe.timer);
> >> +               }
> >>         }
> >>
> >>         if (mask & KCS_BMC_EVENT_TYPE_IBF) {
> >> --
> >> 2.34.1
> >>


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
