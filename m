Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ACB58A13CA2
	for <lists+openipmi-developer@lfdr.de>; Thu, 16 Jan 2025 15:48:45 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tYRAm-0008Ms-3m;
	Thu, 16 Jan 2025 14:48:40 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <robh@kernel.org>) id 1tYRAd-0008Mg-Rl
 for openipmi-developer@lists.sourceforge.net;
 Thu, 16 Jan 2025 14:48:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fmEL6EhwrC/4U5BAdktF8uXgQAj2y987DowdjfdUmV8=; b=GKxfzmNhbq7YWFwCzz61bBXXwo
 wJGtfkdH9rLtlX6TRlLthQTFw8w/YrQtzI+vvR0yyDn1OQLFcK9h6AtEuuJZGIC7YIDPyGKreTAvU
 INgylJF/GUOl43q/Ve1SJ38rDIMSxPJfEv/YdgNzzwGGf3wHEvsZumQQArWvjavLxBWI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fmEL6EhwrC/4U5BAdktF8uXgQAj2y987DowdjfdUmV8=; b=XGFOdwyoKqOZtg19JiWEiFoNFl
 UaSYKMZl9C4B35NZQ68Losak0DziklalTMNjjrBvpLYHygizPDyY2QyFjoC06PiC8F31PIw+AqeIO
 rLnzYuyueyG+SSSH3s4/D74eMxANt4tuyN+L2WX4e82K/KNZRTeTCDNNEo3LSwQn5P/8=;
Received: from nyc.source.kernel.org ([147.75.193.91])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tYRAd-0001Ju-TZ for openipmi-developer@lists.sourceforge.net;
 Thu, 16 Jan 2025 14:48:32 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 18251A41E7C;
 Thu, 16 Jan 2025 14:46:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 96C87C4AF09;
 Thu, 16 Jan 2025 14:48:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1737038900;
 bh=kS1K6s9fmeCJ57o2iulNzC774Qqxf86e2tf+WDO/RDs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=I7gWuPjYUDO+/EWctbZWV+AMVHKrCywMDcLItASnzieeMyQY3J5pRyoxlE3HB4JBv
 yqOxikmYUw658NzU0t5IdPAVxOdMjUzyPTMkyR3BEh/NgyrIdQwT7QElDKGXkaVQ/l
 1sk0ws2PzulzxViYIwEPQFGG5u+wRF6RaHJqK97MZ1H5su57RFSmKNXNCqtDbTj77F
 3ccvynueLKPCLuhWyriHbX490mHK9SbDYVNl8ZzuU2EODvhujjW1PPy7e1wAiQREP3
 p/VgwPuvt2vzwj15L8xSTjKWg3GhMJ5UPRqUHJ3OHo50SMi5uI7IaoEmpkvuBA9yLd
 fctRPjnDoInQQ==
Date: Thu, 16 Jan 2025 08:48:19 -0600
To: Ninad Palsule <ninad@linux.ibm.com>
Message-ID: <20250116144819.GA2270032-robh@kernel.org>
References: <20250114220147.757075-1-ninad@linux.ibm.com>
 <20250114220147.757075-4-ninad@linux.ibm.com>
 <mbtwdqpalfr2xkhnjc5c5jcjk4w5brrxmgfeydjj5j2jfze4mj@smyyogplpxss>
 <20250115142457.GA3859772-robh@kernel.org>
 <a164ab0e-1cdf-427e-bfb7-f5614be5b0fa@linux.ibm.com>
 <oezohwamtm47adreexlgan6t76cdhpjitog52yjek3bkr44yks@oojstup2uqkb>
 <10c06fec-b721-4a7f-b105-c3c4c8358a47@linux.ibm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <10c06fec-b721-4a7f-b105-c3c4c8358a47@linux.ibm.com>
X-Spam-Score: -2.6 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Jan 16, 2025 at 08:19:25AM -0600,
 Ninad Palsule wrote:
 > Hi Krzysztof, > > On 1/16/25 04:38, Krzysztof Kozlowski wrote: > > On Wed,
 Jan 15, 2025 at 03:53:38PM -0600, Ninad Palsule wrote: > > + [...] 
 Content analysis details:   (-2.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [147.75.193.91 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [147.75.193.91 listed in bl.score.senderscore.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [147.75.193.91 listed in list.dnswl.org]
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1tYRAd-0001Ju-TZ
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
From: Rob Herring via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org,
 linux-aspeed@lists.ozlabs.org, minyard@acm.org, netdev@vger.kernel.org,
 eajames@linux.ibm.com, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, andrew+netdev@lunn.ch,
 edumazet@google.com, kuba@kernel.org, krzk+dt@kernel.org, pabeni@redhat.com,
 openipmi-developer@lists.sourceforge.net, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Thu, Jan 16, 2025 at 08:19:25AM -0600, Ninad Palsule wrote:
>    Hi  Krzysztof,
> 
>    On 1/16/25 04:38, Krzysztof Kozlowski wrote:
> 
> On Wed, Jan 15, 2025 at 03:53:38PM -0600, Ninad Palsule wrote:
> 
> +  "^(hog-[0-9]+|.+-hog(-[0-9]+)?)$":
> 
> Choose one - suffix or prefix. More popular is suffix.
> 
> I was about to say that, but this matches what gpio-hog.yaml defines.
> Why we did both, I don't remember. We could probably eliminate
> 'hog-[0-9]+' as that doesn't appear to be used much.
> 
> Long term, I want to make all gpio controllers reference a gpio
> controller schema and put the hog stuff there. Then we have the node
> names defined in 1 place.
> 
> Which one of the following are you suggesting?
> 
> "^(.+-hog(-[0-9]+)?)$"
> 
> This. The second part of pattern.
> 
> I'll send a patch for dtschema to drop the prefix version.
> 
>    Thanks. Also thanks for the other patch. It helped a lot.

Please fix your mail client to properly quote replies

Rob


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
