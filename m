Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DCF7104C55
	for <lists+openipmi-developer@lfdr.de>; Thu, 21 Nov 2019 08:22:19 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1iXgnB-0006Wq-Qs; Thu, 21 Nov 2019 07:22:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <gregkh@linuxfoundation.org>) id 1iXgn4-0006Uc-6l
 for openipmi-developer@lists.sourceforge.net; Thu, 21 Nov 2019 07:22:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JHolA7JM9eB72JYCpMc5JArWiZ6mFZyfncjEDdad16Y=; b=Wn9dmEQi5goT3GCKXsPGE2dyPO
 InPWaq/KOq/+/cc+LjsA8peld2KJPgz4t8WZRgTpCV5dxyzDR/AdzjW4y+iPUOQzL9CXiROzsA6dl
 QVE51fkqEO084uao0o5DOtXrmirnF8Y8OWlBsNHmy7yLVMAUpgeJqa89cXjeGtrgxvDE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JHolA7JM9eB72JYCpMc5JArWiZ6mFZyfncjEDdad16Y=; b=kSI5/34MkloeIAGeLGR3SOnsPO
 EIHYPYEpil6ko8fRemlWjLqEeTk4tmD1t7QmQ5eM0bbh0Y2W0+twpMtO+byPWEKIycaPTI4CsaX10
 BqgTFsGX+o9TDuvR/B8AtUzgzKF28yAI9/Z98U5TVAGoZnA4AX0ga2+kcwtpKLW2BSWg=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iXgmz-008Cav-OO
 for openipmi-developer@lists.sourceforge.net; Thu, 21 Nov 2019 07:22:10 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F02FC20855;
 Thu, 21 Nov 2019 07:21:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574320918;
 bh=QZ5Gwedli1zb2+/D+s0LFaq6A2iC1RTvq3qvbeUR4nU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RhCRMFKX9tIYyfm97YaXM39BKJwZWePeRoM0ikWGeb1SeSIkHNbTrdOKLRXHLStbC
 0ExWWHLrbZDVg49Srpx+btB4kVtedTBoeThVPAEioOKxcx6u8FcR/+23QKWj4CZ0+E
 wtYWwZbB5WKtlJElLzmFpgT08foiXbr/+8GHtU/o=
Date: Thu, 21 Nov 2019 08:21:56 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Message-ID: <20191121072156.GA356931@kroah.com>
References: <1574306340-29108-1-git-send-email-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1574306340-29108-1-git-send-email-krzk@kernel.org>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iXgmz-008Cav-OO
Subject: Re: [Openipmi-developer] [PATCH v2] char: Fix Kconfig indentation
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
Cc: Herbert Xu <herbert@gondor.apana.org.au>, Corey Minyard <minyard@acm.org>,
 David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, linux-crypto@vger.kernel.org,
 Matt Mackall <mpm@selenic.com>, openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Thu, Nov 21, 2019 at 04:19:00AM +0100, Krzysztof Kozlowski wrote:
> Adjust indentation from spaces to tab (+optional two spaces) as in
> coding style with command like:
> 	$ sed -e 's/^        /\t/' -i */Kconfig
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> 
> ---
> 
> Changes since v1:
> 1. Fix also 7-space and tab+1 space indentation issues.

And the same here, I've already applied v1 so this does not apply to my
tree.

thanks,

greg k-h


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
