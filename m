Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 11550A49154
	for <lists+openipmi-developer@lfdr.de>; Fri, 28 Feb 2025 07:13:49 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tntcx-0000uZ-5l;
	Fri, 28 Feb 2025 06:13:39 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andrew@codeconstruct.com.au>) id 1tntcv-0000uQ-CC
 for openipmi-developer@lists.sourceforge.net;
 Fri, 28 Feb 2025 06:13:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Date:Message-Id:Subject:References:In-Reply-To:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pp9IBKUNCA/ZJDCgfry7+1Ltnk8p0iW227IRYl0yOXU=; b=QJB7/s4C9kIbkGmgo4D/sgk/nA
 gdw+effWQRP6INLzUx6CqIed3sPS2XWn9wFpTnpNlTHioVRgd7o5Uj3Zv+vnZYJenEpVg6DilBUJJ
 jbD0+Z2WwzWQNaQ/gPx39OITMMRuxlI5eATeRv6L3HsAd0w1PKV7Lb+mpS5upJnwBKCk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Date:Message-Id:
 Subject:References:In-Reply-To:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=pp9IBKUNCA/ZJDCgfry7+1Ltnk8p0iW227IRYl0yOXU=; b=WhYOQiULKxiFR1ZvzChZBbdQV9
 Oa6iCYNBCmS8Q43IIy7P0qM/PYeEHHPEcGnHNEtBHXyzVPTlj+0yWfAUOnQ8JcgsRB1C0vc1hWNYC
 +Ul9RRUZlK3vBJt1yJASlHuOO0OjUkAUcUJjpDzSxlfd6mUafskbfweuTyNuI+OKYynY=;
Received: from pi.codeconstruct.com.au ([203.29.241.158]
 helo=codeconstruct.com.au)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tntct-0005nc-Kg for openipmi-developer@lists.sourceforge.net;
 Fri, 28 Feb 2025 06:13:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=codeconstruct.com.au; s=2022a; t=1740723203;
 bh=pp9IBKUNCA/ZJDCgfry7+1Ltnk8p0iW227IRYl0yOXU=;
 h=From:To:Cc:In-Reply-To:References:Subject:Date;
 b=ditMs+Qb4Ve+EarpPSccKWAdGQWMzmrpNYywK6GlQojWc1Vahufg9xsyjz3kGCk5O
 gIcp3/Sj7bJmQSNN1Y6xLJrBClGqr1UoSrEbSpYEnP2EkzRUjDZorc2M1SYpPqjg4W
 xvBjpqq5yBPccr9WMXq7iAoNM72bd2XppoXdOiBbjXj9+5UHYsjhAKKGqD+KqIYYL3
 bw0oyu141KURV/zuC5UdSEqIRXpyP4r6johtqrPaopw+QKjfhWEIL6jLgCzH7lw65F
 wZ0rzC32U8Uc2MEcI7qET4/5vBwqKCO3yU1mHoO7QioJWAg0Hucx8Qx3rAjYykmMna
 MSARqv1UkfSEg==
Received: from [127.0.1.1] (58-7-146-131.dyn.iinet.net.au [58.7.146.131])
 by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 65FE977DAB;
 Fri, 28 Feb 2025 14:13:20 +0800 (AWST)
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: brgl@bgdev.pl, linus.walleij@linaro.org, minyard@acm.org, 
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
 openipmi-developer@lists.sourceforge.net, joel@jms.id.au, 
 devicetree@vger.kernel.org, eajames@linux.ibm.com, 
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org, 
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, 
 Ninad Palsule <ninad@linux.ibm.com>
In-Reply-To: <20250204194115.3899174-1-ninad@linux.ibm.com>
References: <20250204194115.3899174-1-ninad@linux.ibm.com>
Message-Id: <174072320025.3245072.10865277615164271412.b4-ty@codeconstruct.com.au>
Date: Fri, 28 Feb 2025 16:43:20 +1030
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, 04 Feb 2025 13:41:03 -0600, Ninad Palsule wrote: >
 Please review the patch set version 9. > > V9: > Thanks, I've applied this
 to be picked up through the BMC tree. -- Andrew Jeffery
 <andrew@codeconstruct.com.au>
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [203.29.241.158 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [203.29.241.158 listed in bl.score.senderscore.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1tntct-0005nc-Kg
Subject: Re: [Openipmi-developer] [PATCH v9 0/9] DTS updates for system1 BMC
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
Cc: andrew@lunn.ch
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue, 04 Feb 2025 13:41:03 -0600, Ninad Palsule wrote:
> Please review the patch set version 9.
> 
> V9:
> 

Thanks, I've applied this to be picked up through the BMC tree.

--
Andrew Jeffery <andrew@codeconstruct.com.au>



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
