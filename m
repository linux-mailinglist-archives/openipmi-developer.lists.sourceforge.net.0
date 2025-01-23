Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C87DAA1AC96
	for <lists+openipmi-developer@lfdr.de>; Thu, 23 Jan 2025 23:17:27 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tb5Vs-0006gE-Kk;
	Thu, 23 Jan 2025 22:17:24 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <robh@kernel.org>) id 1tb5Vr-0006g7-0y
 for openipmi-developer@lists.sourceforge.net;
 Thu, 23 Jan 2025 22:17:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Oq5Svr+0mkoExl6RExPJDLf8AuUnGZxC8idcmofzQaM=; b=CuiLUZMKED58L+ULqnKP+wOmxQ
 BAUUFyYXHojP19wuXo5plGH181nr8SlkN7nMQqfw/CTA4nh8qiocjd2Mg8KRvDtRBddhyB+26eOjS
 t29ry20a+wAwKiO/nLMozfbnL4VxjJ7HnzeNkISg4zeYR9fXwbi2gQ5PxqMV39Qte9Ww=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Oq5Svr+0mkoExl6RExPJDLf8AuUnGZxC8idcmofzQaM=; b=FUPgKn4xpOhb86UZYZablBZxeC
 fb6elQ4UomRqKzgE5EvCo5u6e4XdP01sfSRWu/k6fgPvSYqc2x7d2Lv8mrqZDyf88qlTQ7jQ6tzK2
 DZpS7xZhQc2OV0Xxqg4vdCjgagr2V2ZkPRuB5E7tygn6llPw0u4nA7BlMx/ENW9UW6Xo=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tb5Vq-0007tW-5p for openipmi-developer@lists.sourceforge.net;
 Thu, 23 Jan 2025 22:17:22 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 7570E5C54F0;
 Thu, 23 Jan 2025 22:16:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5BA96C4CED3;
 Thu, 23 Jan 2025 22:17:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1737670631;
 bh=pcG2D2/E0u37nyJWQeA42BhrzuRLXs0n2hWP0puC9mc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=N4R4wPYqGTTiYnldH6jl4hR7pTwLxm1N71v7m5eehLbDNhx+4mJyeyqxiR4pFwI0h
 BzRQ3n+ZUAgEwvc/4Y5lI7iZ+ncK5tubXKO7UKpRdK4bKBQm9EudmHDLsJXh5EwPOa
 QjSuiqxT0/Hetex3f6MmQggKiggCAIBtUlqvdcDSscMT/Lve8uS38Wyg3GRSfyr6cD
 bDZj4PoYC7S8FKd/BwB0XJ+jxpy83STlru5dq0DXwLPPRZFgUURvm70nA/IWJBegL3
 WGwaeSntD53ucCbC2AqECdcEAHJftzwl/qu33tBvVmrOD/yqI95kMCNF4K3CKWszYS
 C7GaiHLKajSaA==
Date: Thu, 23 Jan 2025 16:17:10 -0600
To: Ninad Palsule <ninad@linux.ibm.com>
Message-ID: <20250123221710.GA448645-robh@kernel.org>
References: <20250116203527.2102742-1-ninad@linux.ibm.com>
 <20250116203527.2102742-4-ninad@linux.ibm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250116203527.2102742-4-ninad@linux.ibm.com>
X-Spam-Score: -8.2 (--------)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Jan 16, 2025 at 02:35:18PM -0600,
 Ninad Palsule wrote:
 > Allow parsing GPIO controller children nodes with GPIO hogs. > >
 Signed-off-by:
 Ninad Palsule <ninad@linux.ibm.com> > --- > .../devicet [...] 
 Content analysis details:   (-8.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [139.178.84.217 listed in sa-trusted.bondedsender.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [139.178.84.217 listed in bl.score.senderscore.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -3.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1tb5Vq-0007tW-5p
Subject: Re: [Openipmi-developer] [PATCH v6 03/10] dt-bindings: gpio:
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
From: Rob Herring via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org,
 linux-aspeed@lists.ozlabs.org, minyard@acm.org, netdev@vger.kernel.org,
 eajames@linux.ibm.com, linux-kernel@vger.kernel.org, andrew+netdev@lunn.ch,
 edumazet@google.com, kuba@kernel.org, krzk+dt@kernel.org, pabeni@redhat.com,
 openipmi-developer@lists.sourceforge.net, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Thu, Jan 16, 2025 at 02:35:18PM -0600, Ninad Palsule wrote:
> Allow parsing GPIO controller children nodes with GPIO hogs.
> 
> Signed-off-by: Ninad Palsule <ninad@linux.ibm.com>
> ---
>  .../devicetree/bindings/gpio/aspeed,ast2400-gpio.yaml       | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/gpio/aspeed,ast2400-gpio.yaml b/Documentation/devicetree/bindings/gpio/aspeed,ast2400-gpio.yaml
> index b9afd07a9d24..0497d19a60e9 100644
> --- a/Documentation/devicetree/bindings/gpio/aspeed,ast2400-gpio.yaml
> +++ b/Documentation/devicetree/bindings/gpio/aspeed,ast2400-gpio.yaml
> @@ -46,6 +46,12 @@ properties:
>      minimum: 12
>      maximum: 232
>  
> +patternProperties:
> +  "^(.+-hog(-[0-9]+)?)$":

This can be further simplified to: "-hog(-[0-9]+)?$"

With that,

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


BTW, no need to ping. You can check the status of binding patches in 
patchwork[1].

Rob

[1] https://patchwork.ozlabs.org/project/devicetree-bindings/list/


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
