Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 02F77A115C3
	for <lists+openipmi-developer@lfdr.de>; Wed, 15 Jan 2025 00:58:17 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tXqnV-0007sU-VD;
	Tue, 14 Jan 2025 23:58:13 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <robh@kernel.org>) id 1tXqnR-0007sK-W7
 for openipmi-developer@lists.sourceforge.net;
 Tue, 14 Jan 2025 23:58:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Subject:Message-Id:References:In-Reply-To:To:Cc:
 From:MIME-Version:Content-Transfer-Encoding:Content-Type:Date:Sender:Reply-To
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=96OHoOwSN+R+9ZgJ6AGbG6E0JjTK7ibX/wrqTSKXGbo=; b=jdSOW4nd6VuP20cmXfKmbqtwRh
 w+QUhcPVjZ+KpPcGlRBEMUPhPjF6UvuHG6PAQRCCGV1iJO4tXGOpICRKG7VjLnzgL+H5r5u8JXDWn
 IL0TS7NwMw7PsPzvOXGJZF8cfMIrSmRNNbMk7yKDJFstOIUGrVobCRKHWBPY+aDEq2YI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Subject:Message-Id:References:In-Reply-To:To:Cc:From:MIME-Version:
 Content-Transfer-Encoding:Content-Type:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=96OHoOwSN+R+9ZgJ6AGbG6E0JjTK7ibX/wrqTSKXGbo=; b=HUUymseMSnV+SlWZVL22+ztjDk
 gNa0/zsW6VJCvGvs1QyA5WHJ5mbJxulsrPav/2JtyzyWyNqL+bI7+x9eF1pTifpnwea4rK18s38Y3
 6c4gIjesHNnozGGzL6nhDDEeULHVJIYCKIQG0D/6K9oRsKvM3K7x8GAhADft+eioRiQU=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tXqnR-0006Xf-Bj for openipmi-developer@lists.sourceforge.net;
 Tue, 14 Jan 2025 23:58:09 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 33BD35C5A5A;
 Tue, 14 Jan 2025 23:57:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 66EA0C4CEDF;
 Tue, 14 Jan 2025 23:57:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1736899078;
 bh=tpzPtlhfSg1oMQzL2Ct27bJY5cpUAeZYKUcwY61RUAs=;
 h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
 b=YR4jv4VqMwHB30SIKNMX6+CkulB9Ga/HxazCKrQ9IEhW3b/hkvOihD10wmNx5Zwep
 xgfu+TfRDvQSNWzq+8nyUNAmlBR4NBhplr8wvhekLzglPGcNjTNu9GPdn6wVp4yCMJ
 cB+8b70SUbUZECxB/C9SOvcS993DDbrPCKVhNekVJsEnDJ23Rywpi2j2yI8IRb8KSi
 ndbzYFzP7E/ezdJa8n1pRKj9+3TwSEnWczBn2EHciN9COm2PPFSXlCg3fUbT5VkQIs
 t4uAsa9uobHF8IBR1P+LB6GGxx3R0XxsgDAoDKZjatJ1Nc5cGFNhYhFuvAIUy2jqGB
 FVzZJOsLOGrOQ==
Date: Tue, 14 Jan 2025 17:57:57 -0600
MIME-Version: 1.0
To: Ninad Palsule <ninad@linux.ibm.com>
In-Reply-To: <20250114220147.757075-4-ninad@linux.ibm.com>
References: <20250114220147.757075-1-ninad@linux.ibm.com>
 <20250114220147.757075-4-ninad@linux.ibm.com>
Message-Id: <173689907575.1972841.5521973699547085746.robh@kernel.org>
X-Spam-Score: -5.3 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, 14 Jan 2025 16:01:37 -0600, Ninad Palsule wrote: >
 Allow parsing GPIO controller children nodes with GPIO hogs. > >
 Signed-off-by:
 Ninad Palsule <ninad@linux.ibm.com> > --- > .../devicetree/bi [...] 
 Content analysis details:   (-5.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [139.178.84.217 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [139.178.84.217 listed in bl.score.senderscore.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1tXqnR-0006Xf-Bj
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
From: "Rob Herring \(Arm\) via Openipmi-developer"
 <openipmi-developer@lists.sourceforge.net>
Reply-To: "Rob Herring \(Arm\)" <robh@kernel.org>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, minyard@acm.org,
 linux-aspeed@lists.ozlabs.org, netdev@vger.kernel.org, eajames@linux.ibm.com,
 linux-kernel@vger.kernel.org, andrew+netdev@lunn.ch, edumazet@google.com,
 kuba@kernel.org, krzk+dt@kernel.org, pabeni@redhat.com,
 openipmi-developer@lists.sourceforge.net, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net


On Tue, 14 Jan 2025 16:01:37 -0600, Ninad Palsule wrote:
> Allow parsing GPIO controller children nodes with GPIO hogs.
> 
> Signed-off-by: Ninad Palsule <ninad@linux.ibm.com>
> ---
>  .../devicetree/bindings/gpio/aspeed,ast2400-gpio.yaml       | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:


doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20250114220147.757075-4-ninad@linux.ibm.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
