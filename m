Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B112EA125FC
	for <lists+openipmi-developer@lfdr.de>; Wed, 15 Jan 2025 15:25:29 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tY4Kj-0006cp-LS;
	Wed, 15 Jan 2025 14:25:25 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <robh@kernel.org>) id 1tY4KY-0006bu-EB
 for openipmi-developer@lists.sourceforge.net;
 Wed, 15 Jan 2025 14:25:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xaOcGj9j9Cemvm+vFePyCuGaT0+qHLpoq0/snIH1qN4=; b=T6e5uOJa+tHnsZTnfpoJ6fp/8e
 jXXqvlw4fA9AQ3+46AiJS3Joh19heW12gRE+BNi9GnqwNih8I7Zw7KvPJAu2CtBEoEYhWaBwiOIws
 ehhGFpnwPfy7v1Jby6PumRNgLWjsfatg8wbnVZkDI2CnfL7eihW8RqjGJQf0ECxE3g30=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xaOcGj9j9Cemvm+vFePyCuGaT0+qHLpoq0/snIH1qN4=; b=JoKtE3XG5S0TjgzEUEgEGFwdWb
 2OlfispOBZqizmfHYe7sIUqr9gdtuO6uqVWVHaItA2TG4TM6PQhyB6ykgE+wr0joC3A/8vZfE0Hj3
 u1zSwESF6QDq+BAgnE3gt+uIGgQW8pocGZUzanE5AdWRq6nKrqX2IY7kMEIItc5sCi34=;
Received: from nyc.source.kernel.org ([147.75.193.91])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tY4KT-0002Bv-MV for openipmi-developer@lists.sourceforge.net;
 Wed, 15 Jan 2025 14:25:10 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id E6325A4056A;
 Wed, 15 Jan 2025 14:23:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4D1BAC4CED1;
 Wed, 15 Jan 2025 14:24:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1736951098;
 bh=WMcIZXIWDa7GXnAeCZ5NxIJiTsw13XWfpqK4pCdgiWc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=upw8EeuXYaML9/AhOywPJDa8xi5WeR9m2yIsNolj7dP6UH8uX/xTo9rVWXny5BMTZ
 5kTFQyivcoBL+oastN9JqrQe83FruI51a77YqLwe3+7tX9GRcy/piFAAR5Hi/iZ3Ob
 D0a7xaDbn513HeQ/MUnlsaiuvxDctoKXJhl3txNtdwiRqfYrJEhk4eeo5P1X0Z6oFJ
 jP89kAQhk5CKJsTMXGDDzO5WYoXqqIhFWMm/6UbCeTkVhvs6DUJMf816Z5iEyHUkO+
 bake0gHU9EG6GTTYaKYBI4BEEZ1A+HJzsGVWCiqY4AVHvCQ8HDDmEv0nHySoX000YD
 k1PSgi2nMvPiA==
Date: Wed, 15 Jan 2025 08:24:57 -0600
To: Krzysztof Kozlowski <krzk@kernel.org>
Message-ID: <20250115142457.GA3859772-robh@kernel.org>
References: <20250114220147.757075-1-ninad@linux.ibm.com>
 <20250114220147.757075-4-ninad@linux.ibm.com>
 <mbtwdqpalfr2xkhnjc5c5jcjk4w5brrxmgfeydjj5j2jfze4mj@smyyogplpxss>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <mbtwdqpalfr2xkhnjc5c5jcjk4w5brrxmgfeydjj5j2jfze4mj@smyyogplpxss>
X-Spam-Score: -2.6 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Jan 15, 2025 at 09:45:50AM +0100, Krzysztof Kozlowski
 wrote: > On Tue, Jan 14, 2025 at 04:01:37PM -0600, Ninad Palsule wrote: >
 > Allow parsing GPIO controller children nodes with GPIO hogs. > [...] 
 Content analysis details:   (-2.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [147.75.193.91 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1tY4KT-0002Bv-MV
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
 Ninad Palsule <ninad@linux.ibm.com>, andrew+netdev@lunn.ch,
 edumazet@google.com, kuba@kernel.org, krzk+dt@kernel.org, pabeni@redhat.com,
 openipmi-developer@lists.sourceforge.net, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, Jan 15, 2025 at 09:45:50AM +0100, Krzysztof Kozlowski wrote:
> On Tue, Jan 14, 2025 at 04:01:37PM -0600, Ninad Palsule wrote:
> > Allow parsing GPIO controller children nodes with GPIO hogs.
> > 
> > Signed-off-by: Ninad Palsule <ninad@linux.ibm.com>
> > ---
> >  .../devicetree/bindings/gpio/aspeed,ast2400-gpio.yaml       | 6 ++++++
> >  1 file changed, 6 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/gpio/aspeed,ast2400-gpio.yaml b/Documentation/devicetree/bindings/gpio/aspeed,ast2400-gpio.yaml
> > index b9afd07a9d24..b9bc4fe4d5a6 100644
> > --- a/Documentation/devicetree/bindings/gpio/aspeed,ast2400-gpio.yaml
> > +++ b/Documentation/devicetree/bindings/gpio/aspeed,ast2400-gpio.yaml
> > @@ -46,6 +46,12 @@ properties:
> >      minimum: 12
> >      maximum: 232
> >  
> > +patternProperties:
> > +  "^(hog-[0-9]+|.+-hog(-[0-9]+)?)$":
> 
> Choose one - suffix or prefix. More popular is suffix.

I was about to say that, but this matches what gpio-hog.yaml defines. 
Why we did both, I don't remember. We could probably eliminate 
'hog-[0-9]+' as that doesn't appear to be used much.

Long term, I want to make all gpio controllers reference a gpio 
controller schema and put the hog stuff there. Then we have the node 
names defined in 1 place.

Rob


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
