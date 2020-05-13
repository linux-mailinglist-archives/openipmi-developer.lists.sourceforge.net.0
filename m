Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B9E91D12A5
	for <lists+openipmi-developer@lfdr.de>; Wed, 13 May 2020 14:29:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1jYqVR-0001J0-Bl; Wed, 13 May 2020 12:29:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1jYqVQ-0001Ir-V8
 for openipmi-developer@lists.sourceforge.net; Wed, 13 May 2020 12:29:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=X+YMEnNGHIRHv5i2pgJP6CvjowaQ7wp0v7KSyBmjqZg=; b=RD/OmWUwa/o7KtbjJn61wt3B1C
 C4F1/vUSKs6U2ZR6D68FVfHtiyEOKDY8zqG3Nn+x8WIMsbjX9TwYKBMSgkDifAq58+DhS1K7O+e3I
 gfFw1B9bBj+eDLR0zb+EGMysBbMSz7clBlaHkE3coKB3efJTYBoVdR0aLvpwXS6VdGKY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=X+YMEnNGHIRHv5i2pgJP6CvjowaQ7wp0v7KSyBmjqZg=; b=BG5TOTmuIQweaK7fPN4HOFB352
 CFUckk7e2xWm0BNSb9+UPQ+H1vIU5EzkJLNN9Bs6jiwiWyf5gkNdKy0vk0oAM3btRjCD/l8lihlRl
 8toB5BAh3qQcTNRIflNuFBA+GRsVL0Yw358ucFBcEtQxBWZGUiwUkzpdkp4KQ+stcKxo=;
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jYqVP-007kIA-LI
 for openipmi-developer@lists.sourceforge.net; Wed, 13 May 2020 12:29:00 +0000
Received: by mail-oi1-f193.google.com with SMTP id v128so4416546oia.7
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 13 May 2020 05:28:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=X+YMEnNGHIRHv5i2pgJP6CvjowaQ7wp0v7KSyBmjqZg=;
 b=onvfodWQlZcqrfWAvLT92NRwFi3+YT5iv65aStLrJZR0Z37RjR+kb0qQas8E5QafYc
 XSm/Rd5SQDM905szt1AV++k41Dq1HgwfL3Io61Wri0mQ4jCSzeNLtloDzS8j+FF/ZvLc
 63N4WeS6GR438bITwrAP9oT/9rHp0Fvxoa2tzCZoQ68EZren+X5TBZ8O9y+q2UNgghh+
 tngvpieVNVdinoma2EEVAs6pGK2minA0Rnvhto36+DpjM82Ns7ypC3d78xbOvKrLNTo2
 RsbmrNOQ8IaA9Eo91CRoD5TZT5YzbaFVatapevo7V7ENt7aX7icmphVe1SGEFHXmS/XC
 tooA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=X+YMEnNGHIRHv5i2pgJP6CvjowaQ7wp0v7KSyBmjqZg=;
 b=kbOpQa2flXLiBn1C1D00ENy9WRWT0/fQtOk0xOmBi0+ZXr5FiUFlM+of8znE2QUflr
 KPDLmr+XnZ10J8PJy4kzcOekZpg5CHR2UYQvLoRm2vBEQ+BytGmwAYtQGhBCxG401Lsc
 E0yXwpsvYTmxTq/2+9g68rJAvXFNkCYD1OBk6f1Ifh+9qrBAF031YIilikWi3wGcxfZ1
 KCuvq6MP1vhjSN55H4tqiUUSJ6rsPxKnC6OWRzsgJ1eyx7TVl2qGtZSIrHd2JaQJtalb
 v6JjnUGn/ODuHpRROR58WMuXRCfXwQKCZoOeMAy+RjjuTuKkpDqncRfrwmcX4xdVoAkW
 PxCA==
X-Gm-Message-State: AGi0PuZsw9JiEXUYAvHt41uetKZjapk9bTW6/wZy711r5aZHBG5/+YcY
 Oj5aNkGPDGrlBFvqGC4zOw==
X-Google-Smtp-Source: APiQypJrccrVkQAAcpRmapFbtFU/9vMh8lVpj0epLTDOYnKFYgpoevntivaAzvcs6IzA0P5gwNawjw==
X-Received: by 2002:aca:dc82:: with SMTP id
 t124mr11220213oig.160.1589372933933; 
 Wed, 13 May 2020 05:28:53 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id v3sm4200611ote.39.2020.05.13.05.28.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 May 2020 05:28:53 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:8b39:c3f3:f502:5c4e])
 by serve.minyard.net (Postfix) with ESMTPSA id ECF3A180042;
 Wed, 13 May 2020 12:28:51 +0000 (UTC)
Date: Wed, 13 May 2020 07:28:50 -0500
From: Corey Minyard <minyard@acm.org>
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Message-ID: <20200513122850.GT9902@minyard.net>
References: <20200326210958.13051-1-wsa+renesas@sang-engineering.com>
 <20200326210958.13051-2-wsa+renesas@sang-engineering.com>
 <20200512211425.GQ9902@minyard.net> <20200513071004.GA1043@ninjato>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200513071004.GA1043@ninjato>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.193 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jYqVP-007kIA-LI
Subject: Re: [Openipmi-developer] [PATCH 1/1] char: ipmi: convert to use
 i2c_new_client_device()
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
Reply-To: minyard@acm.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 openipmi-developer@lists.sourceforge.net, linux-i2c@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, May 13, 2020 at 09:10:04AM +0200, Wolfram Sang wrote:
> 
> > > -	addr_info->added_client = i2c_new_device(to_i2c_adapter(adev),
> > > -						 &addr_info->binfo);
> > > +	addr_info->added_client = i2c_new_client_device(to_i2c_adapter(adev),
> > > +							&addr_info->binfo);
> > 
> > i2c_new_client_device returns an ERR_PTR, not NULL on error.  So this
> 
> Yes, this is the main motivation for the new API.
> 
> > needs some more work.  I'll send something out soon.
> 
> Why does it need that work? 'added_client' is only used with
> i2c_unregister_device() which has been fixed to handle ERR_PTR as well.
> Or am I missing something?
> 

No, I didn't look to see if i2c_unregister_device could handle that.

-corey


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
