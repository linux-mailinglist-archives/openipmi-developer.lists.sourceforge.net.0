Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B9C64A27FF6
	for <lists+openipmi-developer@lfdr.de>; Wed,  5 Feb 2025 01:06:02 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tfSvV-0003Of-8e;
	Wed, 05 Feb 2025 00:05:58 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andrew@codeconstruct.com.au>) id 1tfSvU-0003OX-BD
 for openipmi-developer@lists.sourceforge.net;
 Wed, 05 Feb 2025 00:05:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :References:In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aMffe2cuyieFMT/ZvHdJ4Q+mva2yTWC26VFHFOFlKeI=; b=dWHlbt9EMVosd3uoL0VTPc9rr1
 BFH349Wh6pQKzuaPtzd5iWeteJtPytUDA+/Whu0XpxhsS3yBWhIbchIgL9YEtJ0Gz3uaEOrbiSPbV
 JSTL6giQ3nSdP+lOTR0I7GjSsAfCtSCkC1bsPi4VUxXwf/tkgDRsZLCAxkVam9H2WMgA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:References:
 In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=aMffe2cuyieFMT/ZvHdJ4Q+mva2yTWC26VFHFOFlKeI=; b=X/S4eBy0p84BK1DMlmcdUK0dhi
 +k6JMxSx0Yfkpe3vCavdKemPAssMupx7SavVSyfQ4mSLDEwxVuiI90dJqd/DwWHBemEOiNrnur8PZ
 70f9EN+UcD0BNhNY/3i50uNz4qRazIqsztxawBl6psq5C6i5sZOdUf9afG2HQ+JPaIbU=;
Received: from pi.codeconstruct.com.au ([203.29.241.158]
 helo=codeconstruct.com.au)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tfSvT-0005eM-75 for openipmi-developer@lists.sourceforge.net;
 Wed, 05 Feb 2025 00:05:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=codeconstruct.com.au; s=2022a; t=1738713948;
 bh=aMffe2cuyieFMT/ZvHdJ4Q+mva2yTWC26VFHFOFlKeI=;
 h=Subject:From:To:Date:In-Reply-To:References;
 b=LRIFxGFFHQUulv7+gJaJmDaWZ/PPEQJVmMZGlxQsy7SG15tOvvOCxT6hHwupywBAO
 bFTs9JIdo0/N5USrIdXdMxDqzfYs4LDT+w+9d2V2E6DVvPhUXbKta2mrcRSWADjZjJ
 IFHRP+OSir09zKCOJGmq5BNwhrDamJW5HcnePqwfJgdo1JUjcRR3AruwfHcdOG7cnG
 qKxX8ddUePxs12+jcVYZTdNBiXM3WMdrbFtjW2Xca+mLz/lRWd4bOXsBk568jKtjeo
 SrzUlAatdu22ie+tuIF/MRU3W8Vf34yIuNph5y4IBwrSBZ+EBo8i/jo1WRRyHZfnjV
 O7vCiBEdMjeRA==
Received: from [192.168.68.112]
 (ppp118-210-185-209.adl-adc-lon-bras34.tpg.internode.on.net
 [118.210.185.209])
 by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 941067104E;
 Wed,  5 Feb 2025 08:05:46 +0800 (AWST)
Message-ID: <acf79ff017d7648d4d502b7031b88c4853bf724c.camel@codeconstruct.com.au>
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Ninad Palsule <ninad@linux.ibm.com>, brgl@bgdev.pl, 
 linus.walleij@linaro.org, minyard@acm.org, robh@kernel.org,
 krzk+dt@kernel.org,  conor+dt@kernel.org, andrew+netdev@lunn.ch,
 davem@davemloft.net,  edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com,  openipmi-developer@lists.sourceforge.net,
 netdev@vger.kernel.org, joel@jms.id.au,  devicetree@vger.kernel.org,
 eajames@linux.ibm.com,  linux-arm-kernel@lists.infradead.org,
 linux-aspeed@lists.ozlabs.org,  linux-kernel@vger.kernel.org
Date: Wed, 05 Feb 2025 10:35:46 +1030
In-Reply-To: <66e2e5e4-5ce5-442c-ba0f-d12cbe79e868@linux.ibm.com>
References: <20250203144422.269948-1-ninad@linux.ibm.com>
 <79b819b6d06e3be0aa7e7f6872353f103294710c.camel@codeconstruct.com.au>
 <66e2e5e4-5ce5-442c-ba0f-d12cbe79e868@linux.ibm.com>
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, 2025-02-04 at 13:40 -0600, Ninad Palsule wrote: >
 > This one needs an ack from Linus W or Bartosz if I'm to take it. > > However,
 it's also causing some grief from Rob's bot: > > > > https://l [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [203.29.241.158 listed in sa-trusted.bondedsender.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [203.29.241.158 listed in bl.score.senderscore.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1tfSvT-0005eM-75
Subject: Re: [Openipmi-developer] [PATCH v7 0/9] DTS updates for system1 BMC
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue, 2025-02-04 at 13:40 -0600, Ninad Palsule wrote:
> > This one needs an ack from Linus W or Bartosz if I'm to take it.
> > However, it's also causing some grief from Rob's bot:
> > 
> > https://lore.kernel.org/all/173859694889.2601726.10618336219726193824.robh@kernel.org/
> > 
> > As the reported nodes should all be hogs the name shouldn't matter
> > anywhere else (as far as I'm aware). It would be nice if all the
> > warnings were cleaned up before we merged the binding update. That way
> > we don't cause everyone else looking at the CHECK_DTBS=y output more
> > grief than they already get for the Aspeed devicetrees.
> > 
> > In order to not get bogged down it might be worth splitting out both
> > the IPMB- and GPIO- related patches like you did the FTGMAC100 patch,
> > and then I can merge what remains (from a quick look they seem
> > relatively uncontroversial).
> > 
> 
> The warnings are fixed by different patch by Krzysztof. As there are no 
> more changes then I will wait for other responses. If I don't get those 
> response in couple of days then I will split it.
> https://lore.kernel.org/linux-kernel/20250116085947.87241-1-krzysztof.kozlowski@linaro.org/

That patch fixes a couple of Marvell systems. I think you might have
meant this:

https://lore.kernel.org/all/20250116090009.87338-1-krzysztof.kozlowski@linaro.org/

In which case, I've applied it.

Thanks,

Andrew


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
