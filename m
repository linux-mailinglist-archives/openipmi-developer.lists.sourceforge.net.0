Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CF56A096A5
	for <lists+openipmi-developer@lfdr.de>; Fri, 10 Jan 2025 17:03:16 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tWHTa-0002G4-NF;
	Fri, 10 Jan 2025 16:03:11 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <robh@kernel.org>) id 1tWHTY-0002Ft-Ey
 for openipmi-developer@lists.sourceforge.net;
 Fri, 10 Jan 2025 16:03:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WE1mjwbjPoFLC+ZzgjigY9CirLmrXWGlf1v1smKl6Wg=; b=UTyAmkoIwRZtuBDiEvT6KYgL08
 Bw1uC7doqJTpDTVWB0V/Yb8aJcTgnErAhVzq+LhaUjvBjyx4nPKZX6CuwPLUMphkBHiFOjV2YCk3D
 ktxs0V0iKMvfw00SLzukSMPkjgngct/godr9FKcH9ENAASrUGFydGiiTMFLp2cjvknRQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WE1mjwbjPoFLC+ZzgjigY9CirLmrXWGlf1v1smKl6Wg=; b=J0i84theBVdzT1ZjO3e8rrXPuv
 nr4pb7d6yMIppywwfp4H0CR5tFjulAvvvD/ZDdyWiNWdWIAz9ixfWNuf7Kagw+pLG2YXMY2sjAwCc
 qSfftUvXWQzpxPNeHaZc5/9wDdTvKocwIzBPAylwLqX5193I0JVM6rmn7widZwT3L38E=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tWHTY-0003lx-K7 for openipmi-developer@lists.sourceforge.net;
 Fri, 10 Jan 2025 16:03:09 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 4B5805C0674;
 Fri, 10 Jan 2025 16:02:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B3CD1C4CEE1;
 Fri, 10 Jan 2025 16:02:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1736524978;
 bh=5diCFIWZuIJV4OjMCTWDxa0Zly+MOIMNEFHwJP7l1Sc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ni5EALDsWJZer0hLZHbaLS+k6dsytqsVi5PzwKotztyPzlieVlJX0W4MSNwPuJjaY
 gqE0uYsSBccFOY1YUJXoe6I/pAGCFtHWbUwP/sOvjjkE/TEee86FlejI32+Ql0hVvy
 6ecrvKY/zIO99leBuMepgyseEnJEAzOi3wiGG2MZPihYHNNfnZbOkPZXqPyEJwMZBf
 Z0h2518+suWkTNpqYocRGSwgPGjp3w06qGmJPi6m3OXqvd/hrebnb+8C2ZajQgeIQ0
 toIYd7K8WJoozZcs+9CzqOG1FnT3ydtowvi9edIUvgI/E6I4OOhM3MaQEAE8R+hXUu
 aubW6LpC00vZg==
Date: Fri, 10 Jan 2025 10:02:56 -0600
To: Ninad Palsule <ninad@linux.ibm.com>
Message-ID: <173652497637.2952052.6627595246829829775.robh@kernel.org>
References: <20250108163640.1374680-1-ninad@linux.ibm.com>
 <20250108163640.1374680-2-ninad@linux.ibm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250108163640.1374680-2-ninad@linux.ibm.com>
X-Spam-Score: -5.6 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, 08 Jan 2025 10:36:29 -0600, Ninad Palsule wrote: >
 Aspeed device supports rgmii, rgmii-id, rgmii-rxid, rgmii-txid so > document
 them. > > Signed-off-by: Ninad Palsule <ninad@linux.ibm.com> > - [...] 
 Content analysis details:   (-5.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [139.178.84.217 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [139.178.84.217 listed in sa-accredit.habeas.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.4 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1tWHTY-0003lx-K7
Subject: Re: [Openipmi-developer] [PATCH v3 01/10] dt-bindings: net: faraday,
 ftgmac100: Add phys mode
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
From: "Rob Herring \(Arm\) via Openipmi-developer"
 <openipmi-developer@lists.sourceforge.net>
Reply-To: "Rob Herring \(Arm\)" <robh@kernel.org>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, pabeni@redhat.com,
 minyard@acm.org, linux-aspeed@lists.ozlabs.org, netdev@vger.kernel.org,
 eajames@linux.ibm.com, linux-kernel@vger.kernel.org, davem@davemloft.net,
 andrew+netdev@lunn.ch, edumazet@google.com, ratbert@faraday-tech.com,
 kuba@kernel.org, openipmi-developer@lists.sourceforge.net, krzk+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net


On Wed, 08 Jan 2025 10:36:29 -0600, Ninad Palsule wrote:
> Aspeed device supports rgmii, rgmii-id, rgmii-rxid, rgmii-txid so
> document them.
> 
> Signed-off-by: Ninad Palsule <ninad@linux.ibm.com>
> ---
>  Documentation/devicetree/bindings/net/faraday,ftgmac100.yaml | 3 +++
>  1 file changed, 3 insertions(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
