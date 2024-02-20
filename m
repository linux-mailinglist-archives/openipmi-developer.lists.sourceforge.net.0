Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E33985CB31
	for <lists+openipmi-developer@lfdr.de>; Tue, 20 Feb 2024 23:55:47 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1rcZ1X-00064q-Hs;
	Tue, 20 Feb 2024 22:55:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andrew@codeconstruct.com.au>) id 1rcZ1V-00064k-KO
 for openipmi-developer@lists.sourceforge.net;
 Tue, 20 Feb 2024 22:55:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bAguqTpdGJckXBQC6UU/JtFufFB52QFTiS2nWxrqpUE=; b=bduHneNI9zEMuaGK0IgUitVlwK
 tkcYbHWuKgQdjx/hmvEPUktR78J7dV+yitTtJRFKoS7nHVn4U7ewMA1yks+q8XhJxW7I1ax89NGKy
 q/tTOGVGnsVHnQ6v+Vd0MVXk7sAtVH6Zx91nuA5Psm1fWKafYsEmNnqp4lzyM/k1Urh0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bAguqTpdGJckXBQC6UU/JtFufFB52QFTiS2nWxrqpUE=; b=QC14JkGp8tx2X4Wq68bppwqvsA
 X2Kg+THDEPGpDGbsdSFxIL+UThpquT1MNryl5bV5SOPGYMzQDzw5IuwVu6LkI1eObqe6rqYvpTSKv
 omE7BvnZt1MBolcuckPy4HMZA+6Z/W8iJgTgs0WvUYgwMSjAxWmMR4npxEDikmYi9JjE=;
Received: from pi.codeconstruct.com.au ([203.29.241.158]
 helo=codeconstruct.com.au)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rcZ1R-0000l5-9Q for openipmi-developer@lists.sourceforge.net;
 Tue, 20 Feb 2024 22:55:38 +0000
Received: from [192.168.68.112]
 (ppp14-2-85-8.adl-apt-pir-bras31.tpg.internode.on.net [14.2.85.8])
 by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 0932F20154;
 Wed, 21 Feb 2024 06:36:31 +0800 (AWST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=codeconstruct.com.au; s=2022a; t=1708468595;
 bh=bAguqTpdGJckXBQC6UU/JtFufFB52QFTiS2nWxrqpUE=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References;
 b=JvGHSM+XE/LFqrPlzs/radD0aS5koT/XXbKC+5mTXe6+C84/j1oB2KyYI2nZwlYcB
 bp0GCyOYK7oE0hvZP9pDKJg6jFPISq8gptEe53VmSFw2nT+R6C2q+S5rwgso7w87Rq
 bX6rpccgD0aXvwZOCqE4qYRId4gfSVGRgAAKcqbnr6zc877YGcMr7/naV9GJ4tht7g
 1lP+viKKdNCuLBlek3PBk1ecAcok8YyyM2Boc6dVAKt5xBWvSP7dwPWMoYS9bjFHEv
 H5AOrsTAhvieHyiaQMpFIq2s3BeXvfcoLlniTVsitjUZu8B17CfSAGcdF16ulYzxy9
 YWgbPXnt01tvw==
Message-ID: <9680ad7d7a48fc36a0572dc2286a1229a29341fe.camel@codeconstruct.com.au>
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: minyard@acm.org, Paul Menzel <pmenzel@molgen.mpg.de>
Date: Wed, 21 Feb 2024 09:06:29 +1030
In-Reply-To: <ZdT+eThnYqb3iawF@mail.minyard.net>
References: <20240220123615.963916-1-geissonator@gmail.com>
 <a9169894-6972-49c0-a1d4-d80863f5b511@molgen.mpg.de>
 <ZdT+eThnYqb3iawF@mail.minyard.net>
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, 2024-02-20 at 13:33 -0600, Corey Minyard wrote: >
 On Tue, Feb 20, 2024 at 04:51:21PM +0100, Paul Menzel wrote: > > Dear Andrew, 
 > > > > > > Thank you for your patch. Some style suggestions. > [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rcZ1R-0000l5-9Q
Subject: Re: [Openipmi-developer] [PATCH] ipmi: kcs: Update OBF poll timeout
 to reduce latency
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
Cc: linux-aspeed@lists.ozlabs.org, Andrew Geissler <geissonator@gmail.com>,
 linux-kernel@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 Andrew Geissler <geissonator@yahoo.com>, openbmc@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue, 2024-02-20 at 13:33 -0600, Corey Minyard wrote:
> On Tue, Feb 20, 2024 at 04:51:21PM +0100, Paul Menzel wrote:
> > Dear Andrew,
> > 
> > 
> > Thank you for your patch. Some style suggestions.
> > 
> > Am 20.02.24 um 13:36 schrieb Andrew Geissler:
> > > From: Andrew Geissler <geissonator@yahoo.com>
> > 
> > (Oh no, Yahoo. (ignore))
> > 
> > You could be more specific in the git commit message by using *Double*:
> > 
> > > ipmi: kcs: Double OBF poll timeout to reduce latency
> > 
> > > ipmi: kcs: Double OBF poll timeout to 200 us to reduce latency
> > 
> > > Commit f90bc0f97f2b ("ipmi: kcs: Poll OBF briefly to reduce OBE
> > > latency") introduced an optimization to poll when the host has
> 
> I assume that removing that patch doesn't fix the issue, it would only
> make it worse, right?

Yep.

> 
> > > read the output data register (ODR). Testing has shown that the 100us
> > > timeout was not always enough. When we miss that 100us window, it
> > > results in 10x the time to get the next message from the BMC to the
> > > host. When you're sending 100's of messages between the BMC and Host,
> > 
> > I do not understand, how this poll timeout can result in such an increase,
> > and why a quite big timeout hurts, but I do not know the implementation.
> 
> It's because increasing that number causes it to poll longer for the
> event, the host takes longer than 100us to generate the event, and if
> the event is missed the time when it is checked again is very long.
> 
> Polling for 100us is already pretty extreme. 200us is really too long.
> 
> The real problem is that there is no interrupt for this.  I'd also guess
> there is no interrupt on the host side, because that would solve this
> problem, too, as it would certainly get around to handling the interupt
> in 100us.  I'm assuming the host driver is not the Linux driver, as it
> should also handle this in a timely manner, even when polling.

I expect the issues Andrew G is observing are with the Power10 boot
firmware. The boot firmware only polls. The runtime firmware enables
interrupts.

> 
> If people want hardware to perform well, they ought to design it and not
> expect software to fix all the problems.

+1

> 
> The right way to fix this is probably to do the same thing the host side
> Linux driver does.  It has a kernel thread that is kicked off to do
> this.  Unfortunately, that's more complicated to implement, but it
> avoids polling in this location (which causes latency issues on the BMC
> side) and lets you poll longer without causing issues.

In Andrew G's case he's talking MCTP over KCS using a vendor-defined
transport binding (that also leverages LPC FWH cycles for bulk data
transfers)[1]. I think it could have taken more inspiration from the
IPMI KCS protocol: It might be worth an experiment to write the dummy
command value to IDR from the host side after each ODR read to signal
the host's clearing of OBF (no interrupt for the BMC) with an IBF
(which does interrupt the BMC). And doing the obverse for the BMC. Some
brief thought suggests that if the dummy value is read there's no need
to send a dummy value in reply (as it's an indicator to read the status
register). With that the need for the spin here (or on the host side)
is reduced at the cost of some constant protocol overhead.

[1]: https://github.com/openbmc/libmctp/blob/master/docs/bindings/vendor-ibm-astlpc.md


Andrew J


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
