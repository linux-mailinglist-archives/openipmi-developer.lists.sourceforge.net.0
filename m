Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 808E07E353E
	for <lists+openipmi-developer@lfdr.de>; Tue,  7 Nov 2023 07:33:13 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1r0Fe3-0002RH-B8;
	Tue, 07 Nov 2023 06:33:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andrew@codeconstruct.com.au>) id 1r0Fe1-0002R2-Ks
 for openipmi-developer@lists.sourceforge.net;
 Tue, 07 Nov 2023 06:33:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MKuaj0jg90e1Nx29apttkt6YjYFsc3MzYDII/TbtDLs=; b=cvCgo4gnJNoF5AcXKG916fB+PB
 2Nw3E3TwRfpSRlJ3fcfJRxKoTMqGUJHYi7woSQBQbbzWESkIFPCJauAz4KJNOz9eqnLntB1YjnlZU
 lfJ7Yu9lgGctYhjmIdxLw1UlayI/TLCZSG+cEp2Cj26uqJ1BdKHCBNDpgd5pBWqaSnWY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=MKuaj0jg90e1Nx29apttkt6YjYFsc3MzYDII/TbtDLs=; b=X48bRVJC6Bgr8iE0bi7tmAfk8i
 yCArrurl03MpuaTnyli+ei4T0cYEgtsiUcI+avlErW3pMSiu6yj9qPHh8vFWZ0nVidsuub+FuPiuC
 IgJKDH534+pb4t3/DYEYo+biE6JskZNAetkRlInvmxrj0o4NCNRii/UwZnc/m4Zo/76Y=;
Received: from pi.codeconstruct.com.au ([203.29.241.158]
 helo=codeconstruct.com.au)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1r0Fdw-0005bi-Jt for openipmi-developer@lists.sourceforge.net;
 Tue, 07 Nov 2023 06:33:01 +0000
Received: from [192.168.68.112]
 (ppp14-2-79-67.adl-apt-pir-bras31.tpg.internode.on.net [14.2.79.67])
 by mail.codeconstruct.com.au (Postfix) with ESMTPSA id DD00F20059;
 Tue,  7 Nov 2023 14:32:38 +0800 (AWST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=codeconstruct.com.au; s=2022a; t=1699338759;
 bh=MKuaj0jg90e1Nx29apttkt6YjYFsc3MzYDII/TbtDLs=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References;
 b=OKC3cG2TFWGZ9o+reKKcP6G0mzAazWfzL2qpO1XHXV+3XlCMdogJ5ovQFkJ2Soi8A
 ZC8tzFfP/8oF9wTyjxTcgduoi3u7HR7IAFJd96I/HuJu2QKWs1aUuPXnHRfpiJHQsZ
 NJNOLwRFHmaFfJG3LqGzga4KGCntU3vQ5LdrhVXAbjOOOXQ20rAp0YHL1sc23qXw1T
 14xGxreH9kflNL12456nlkJMA0dLCj7DzpoLqbhs20nCEVezHKVLsaktJR3VSp0UzG
 nhM3q0cxhNU94y3+C6vvr6tvMpjlMPn/2eNGjV/cFcCHiyGyGaneqzSSYIxwUaK0Qq
 Ja7WJHIzH4MAw==
Message-ID: <f3b30b70563c68b56451e3eb7a3e22ce4c142651.camel@codeconstruct.com.au>
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
Date: Tue, 07 Nov 2023 17:02:37 +1030
In-Reply-To: <20231103151651.000045ae@Huawei.com>
References: <20231103061522.1268637-1-andrew@codeconstruct.com.au>
 <20231103061522.1268637-6-andrew@codeconstruct.com.au>
 <20231103151651.000045ae@Huawei.com>
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, 2023-11-03 at 15:16 +0000, Jonathan Cameron wrote:
 > On Fri,
 3 Nov 2023 16:45:17 +1030 > Andrew Jeffery <andrew@codeconstruct.com.au>
 wrote: > > > Operations such as reading and writing from h [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1r0Fdw-0005bi-Jt
Subject: Re: [Openipmi-developer] [PATCH 05/10] ipmi: kcs_bmc: Define client
 actions in terms of kcs_bmc_client
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
Cc: jk@codeconstruct.com.au, openipmi-developer@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, minyard@acm.org, aladyshev22@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Fri, 2023-11-03 at 15:16 +0000, Jonathan Cameron wrote:
> On Fri,  3 Nov 2023 16:45:17 +1030
> Andrew Jeffery <andrew@codeconstruct.com.au> wrote:
> 
> > Operations such as reading and writing from hardware and updating the
> > events of interest are operations in which the client is interested, but
> > are applied to the device. Strengthen the concept of the client in the
> > subsystem and clean up some call-sites by translating between the client
> > and device types in the core of the KCS subsystem.
> > 
> > Signed-off-by: Andrew Jeffery <andrew@codeconstruct.com.au>
> > ---
> >  drivers/char/ipmi/kcs_bmc.c           | 67 ++++++++++++++++++---------
> >  drivers/char/ipmi/kcs_bmc_cdev_ipmi.c | 50 ++++++++++----------
> >  drivers/char/ipmi/kcs_bmc_client.h    | 15 +++---
> >  drivers/char/ipmi/kcs_bmc_serio.c     | 10 ++--
> >  4 files changed, 81 insertions(+), 61 deletions(-)
> > 
> > diff --git a/drivers/char/ipmi/kcs_bmc.c b/drivers/char/ipmi/kcs_bmc.c
> > index 5a3f199241d2..d70e503041bd 100644
> > --- a/drivers/char/ipmi/kcs_bmc.c
> > +++ b/drivers/char/ipmi/kcs_bmc.c
> > @@ -22,33 +22,53 @@ static LIST_HEAD(kcs_bmc_drivers);
> >  
> >  /* Consumer data access */
> >  
> > -u8 kcs_bmc_read_data(struct kcs_bmc_device *kcs_bmc)
> > +static void kcs_bmc_client_validate(struct kcs_bmc_client *client)
> >  {
> > -	return kcs_bmc->ops->io_inputb(kcs_bmc, kcs_bmc->ioreg.idr);
> > +	WARN_ONCE(client != READ_ONCE(client->dev->client), "KCS client confusion detected");
> 
> Is this intended as runtime validation or to catch bugs?
> If just catch bugs then fair enough.

Ah, I think I missed replying here.

So for "runtime validation" I assume you mean "things userspace might
do that are not valid - the error condition should be detected and
punted back to userspace", vs "catch bugs" meaning "the implementation
in the kernel failed to uphold an invariant and now there are
Problems".

If that sounds accurate, then it's the latter: The WARN_ONCE() is
asserting "don't operate on a client that doesn't own the device". It
isn't an error that can be punted back for handling in userspace as it
should not be possible for the kernel to get into this state to begin
with. If we reach this state it's an error in the programming of the
kernel module that's a client of the KCS subsystem.

> 
> With that question answered based on my somewhat vague understanding of the kcs subsystem.
> Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>

Thanks,

Andrew


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
