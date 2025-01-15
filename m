Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C49AA11C58
	for <lists+openipmi-developer@lfdr.de>; Wed, 15 Jan 2025 09:46:13 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tXz2N-00056I-6Y;
	Wed, 15 Jan 2025 08:46:07 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <krzk@kernel.org>) id 1tXz2L-000562-In
 for openipmi-developer@lists.sourceforge.net;
 Wed, 15 Jan 2025 08:46:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NZzAaGpNJQnNH4596dN2jZE4+Wk1VnOd5wMlBtov1n8=; b=UeLGqlwDmz/Zjslfa+kQmXMqYx
 mcbyu+DbvBO1raBlMaeX/w1CyeLVeO4VghqqeCamsJJq9lQbzmALzv8HW8cPRP2tUqEqERxK44K2X
 Y+F/DP3WLQsS0klcxkrqr32HBED4V9XOKSb8yEfZ210oYUdId7Z2c6fHMFX56FQ7z5vc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=NZzAaGpNJQnNH4596dN2jZE4+Wk1VnOd5wMlBtov1n8=; b=GOAEdOkjrLazkMrVSYUfoKW/Q1
 jWsJC8pq+CZO1gUWBg1uqpDLsakYe9JeFtmcxwszma57uR8i2FkVuCXNjIpeGwjpWnZ9TJ4LonUVx
 SSdey3XaABnCuQjshGkBNEL71euNhWvh8Xd5V0jFvSeC2qNdyxJA4gIqE1pKDRMIs0a0=;
Received: from nyc.source.kernel.org ([147.75.193.91])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tXz2K-0003NH-Ef for openipmi-developer@lists.sourceforge.net;
 Wed, 15 Jan 2025 08:46:06 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id A6C7DA4186F;
 Wed, 15 Jan 2025 08:44:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9B8FFC4CEDF;
 Wed, 15 Jan 2025 08:45:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1736930753;
 bh=BO+3m4FMfOEG/15U7sR7NT9LJguDOTS3576NIxYCBC4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qcxC6SzVOVwXLkfQSuzJsVT1MbWuFE4DDr9Lmivl1awzuPTfYhtERml6+ZC1PhY3i
 E05cAcYI5oEg/VnRWQwfJZhslpuwCsVVI3K3k/uH9xtXZ7yCJf/5xe5/SSeF+o2VHL
 LGu3WkcCOtQHu6Ri0NKZ3oPHPplPkBr/4CXAebb+bc8YuF3ncvIlHJEwrk9T15/Rjc
 buCSPyl8nZjxCkJZcNuOjphLNrOctF2hhaPnSO5T0AS34Ii2KHquycjySlvOPxZYLf
 vDksmIIexXrJtsr0S+gzVQhn15ZIX7Y4OYAJ+S989RAHX80XhDs8Y76x0V8FycvmmZ
 lK2QqzNmRTNXA==
Date: Wed, 15 Jan 2025 09:45:50 +0100
To: Ninad Palsule <ninad@linux.ibm.com>
Message-ID: <mbtwdqpalfr2xkhnjc5c5jcjk4w5brrxmgfeydjj5j2jfze4mj@smyyogplpxss>
References: <20250114220147.757075-1-ninad@linux.ibm.com>
 <20250114220147.757075-4-ninad@linux.ibm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250114220147.757075-4-ninad@linux.ibm.com>
X-Spam-Score: -2.6 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Jan 14, 2025 at 04:01:37PM -0600,
 Ninad Palsule wrote:
 > Allow parsing GPIO controller children nodes with GPIO hogs. > >
 Signed-off-by:
 Ninad Palsule <ninad@linux.ibm.com> > --- > .../devicet [...] 
 Content analysis details:   (-2.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [147.75.193.91 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [147.75.193.91 listed in bl.score.senderscore.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [147.75.193.91 listed in list.dnswl.org]
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1tXz2K-0003NH-Ef
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
Cc: robh@kernel.org, conor+dt@kernel.org, linux-aspeed@lists.ozlabs.org,
 minyard@acm.org, devicetree@vger.kernel.org, netdev@vger.kernel.org,
 eajames@linux.ibm.com, linux-kernel@vger.kernel.org, andrew+netdev@lunn.ch,
 edumazet@google.com, kuba@kernel.org, krzk+dt@kernel.org, pabeni@redhat.com,
 openipmi-developer@lists.sourceforge.net, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue, Jan 14, 2025 at 04:01:37PM -0600, Ninad Palsule wrote:
> Allow parsing GPIO controller children nodes with GPIO hogs.
> 
> Signed-off-by: Ninad Palsule <ninad@linux.ibm.com>
> ---
>  .../devicetree/bindings/gpio/aspeed,ast2400-gpio.yaml       | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/gpio/aspeed,ast2400-gpio.yaml b/Documentation/devicetree/bindings/gpio/aspeed,ast2400-gpio.yaml
> index b9afd07a9d24..b9bc4fe4d5a6 100644
> --- a/Documentation/devicetree/bindings/gpio/aspeed,ast2400-gpio.yaml
> +++ b/Documentation/devicetree/bindings/gpio/aspeed,ast2400-gpio.yaml
> @@ -46,6 +46,12 @@ properties:
>      minimum: 12
>      maximum: 232
>  
> +patternProperties:
> +  "^(hog-[0-9]+|.+-hog(-[0-9]+)?)$":

Choose one - suffix or prefix. More popular is suffix.

Best regards,
Krzysztof



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
