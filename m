Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 26649A13814
	for <lists+openipmi-developer@lfdr.de>; Thu, 16 Jan 2025 11:38:35 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tYNGf-0004ez-My;
	Thu, 16 Jan 2025 10:38:30 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <krzk@kernel.org>) id 1tYNGe-0004es-RI
 for openipmi-developer@lists.sourceforge.net;
 Thu, 16 Jan 2025 10:38:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hFH2QkUAPYArHwVFoe8AUQOmWzIhaJml0s+bthS7xaI=; b=HX+XR2BKfATaBMIdhcIr3w3mgu
 e3T5MwCt2Y5foSQ3VOveBQeprlYyZZCcTe8WTkrBlN8R6SQGWImoPRy845OODgbi68zNR8SDbr4Hl
 sCeZQd+sQA6bE6Rq2VtbBqN/fkhISKtoa8AUXx1LOhxyeWeI8p3ZVuHSnypayNKZRBqA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hFH2QkUAPYArHwVFoe8AUQOmWzIhaJml0s+bthS7xaI=; b=Oetejv2PWFfQ041O/isMF50SBi
 KNuHBZYSdYwnpuE3IzFsQU97QAZ7qlLPFhhE3ZS7ENOJZMFzx65KZo1n/1i5+YC2DTcBiBr0BKcJb
 vZnN7Iwmw7ywOA3qDR+ovoCetgNdl4t013qcJPIsx0dTSbOwdhgTh1xA1zm3VkozWBK0=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tYNGe-0004Kn-VT for openipmi-developer@lists.sourceforge.net;
 Thu, 16 Jan 2025 10:38:29 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id D95AF5C5D20;
 Thu, 16 Jan 2025 10:37:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A1225C4CED6;
 Thu, 16 Jan 2025 10:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1737023903;
 bh=FxvjYb2DWjhqzHI2LNTmYl5TuYZ4ikMl0bpGCml6Q1c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=vCw1Hb3JaeryBSelmXm/W7aZWkrxne1V6qJTMbT5wzUB0FLJb1HDVSxQs7L3Adk/J
 h1jIgU3u8NtUtpMZzt59EKG6jWvD0UFM2aGmmMBywcxN0mvUC+SXnoaH6zwC9Y8ixV
 0N4sgYOyBEb+mBtiV6qFripiT9i0WVcjWmKyFdexG6GtbzLRzdX7pr3N2gw3m2GYKm
 KUjby//nop8j6RYVyZYzhQPJKQF5s/6tiY5a33mt3i5ohcQ1sJcIIXpLXXXJ7TjgDw
 0tf+1KC5DkK6Yirs9t9kyDLWGwGJtBzwIga4CdNopnGWlom31Q/lmyG4CVS+r875GW
 56144sKuxFylA==
Date: Thu, 16 Jan 2025 11:38:20 +0100
To: Ninad Palsule <ninad@linux.ibm.com>
Message-ID: <oezohwamtm47adreexlgan6t76cdhpjitog52yjek3bkr44yks@oojstup2uqkb>
References: <20250114220147.757075-1-ninad@linux.ibm.com>
 <20250114220147.757075-4-ninad@linux.ibm.com>
 <mbtwdqpalfr2xkhnjc5c5jcjk4w5brrxmgfeydjj5j2jfze4mj@smyyogplpxss>
 <20250115142457.GA3859772-robh@kernel.org>
 <a164ab0e-1cdf-427e-bfb7-f5614be5b0fa@linux.ibm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a164ab0e-1cdf-427e-bfb7-f5614be5b0fa@linux.ibm.com>
X-Spam-Score: -5.3 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Jan 15, 2025 at 03:53:38PM -0600,
 Ninad Palsule wrote:
 > > > > + "^(hog-[0-9]+|.+-hog(-[0-9]+)?)$": > > > Choose one - suffix or
 prefix. More popular is suffix. > > I was about to say that, bu [...] 
 Content analysis details:   (-5.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [139.178.84.217 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [139.178.84.217 listed in bl.score.senderscore.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1tYNGe-0004Kn-VT
Subject: Re: [Openipmi-developer] [PATCH v5 03/10] dt-bindings: gpio:
 ast2400-gpio: Add hogs parsing
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
From: Krzysztof Kozlowski via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Herring <robh@kernel.org>, conor+dt@kernel.org,
 linux-aspeed@lists.ozlabs.org, minyard@acm.org, devicetree@vger.kernel.org,
 netdev@vger.kernel.org, eajames@linux.ibm.com, linux-kernel@vger.kernel.org,
 andrew+netdev@lunn.ch, edumazet@google.com, kuba@kernel.org,
 krzk+dt@kernel.org, pabeni@redhat.com,
 openipmi-developer@lists.sourceforge.net, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, Jan 15, 2025 at 03:53:38PM -0600, Ninad Palsule wrote:
> > > > +  "^(hog-[0-9]+|.+-hog(-[0-9]+)?)$":
> > > Choose one - suffix or prefix. More popular is suffix.
> > I was about to say that, but this matches what gpio-hog.yaml defines.
> > Why we did both, I don't remember. We could probably eliminate
> > 'hog-[0-9]+' as that doesn't appear to be used much.
> > 
> > Long term, I want to make all gpio controllers reference a gpio
> > controller schema and put the hog stuff there. Then we have the node
> > names defined in 1 place.
> 
> Which one of the following are you suggesting?
> 
> "^(.+-hog(-[0-9]+)?)$"

This. The second part of pattern.

I'll send a patch for dtschema to drop the prefix version.

Best regards,
Krzysztof



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
