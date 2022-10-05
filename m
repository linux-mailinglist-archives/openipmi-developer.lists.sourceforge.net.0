Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ADE925F5D65
	for <lists+openipmi-developer@lfdr.de>; Thu,  6 Oct 2022 01:55:14 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1ogEEI-0000LT-7B;
	Wed, 05 Oct 2022 23:55:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcminyard@gmail.com>) id 1ogEEG-0000LM-QU
 for openipmi-developer@lists.sourceforge.net;
 Wed, 05 Oct 2022 23:55:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0XThhC9U9uKIxJQZ665eKAgfnugmApozs76ScmLZwBk=; b=C0D/OkEQuoF3IyTJVgEQNpartr
 Ybe3+8iRyr076rdEsBNc5NnhOjbcC3j8K5wLQExZsH2WhcvtJiX/uGeRZjD1o8BvVZjGLs5sa9Bfu
 Ad9V+NNVVRoRqFtnVhJbV4RGhppyFeYF396GmRywNmESz8iHiurJpus71pIxOB9qxTVg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0XThhC9U9uKIxJQZ665eKAgfnugmApozs76ScmLZwBk=; b=BSq1JT0YVujy1IsAwDG15ag3mW
 o/6zurxX5ldi4EqAzxRSyxjkpBmFSzEZEaIswPm7dnV9ujd0HSo6FxiFik/EtCSBM/AHIrW77R/s0
 ZIZqVghtLp0UdZzFw67rn3tlaGJ+ZGScnNNLeNkOQmR1+CZ9VZHk5NK9Wd5u9oDUHL4A=;
Received: from mail-qt1-f181.google.com ([209.85.160.181])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ogEEG-00E4WF-7Z for openipmi-developer@lists.sourceforge.net;
 Wed, 05 Oct 2022 23:55:08 +0000
Received: by mail-qt1-f181.google.com with SMTP id a25so156211qtw.10
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 05 Oct 2022 16:55:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:from:to:cc:subject:date
 :message-id:reply-to;
 bh=0XThhC9U9uKIxJQZ665eKAgfnugmApozs76ScmLZwBk=;
 b=KSYASXbbQEnw9dIt1qkDOuDA0+QasmExuyaVSAsBd91F6GmYOyH0wPFBbWUd2SDuPt
 Kd3u4wpivOfmtt4sWJlNrFFkqqvV8f0DLJWsedYyEQOqFKG+4wYoNjmU7UYmwonJVgba
 UcykNav6fHuYOn2yHnk2YZrMx+dCZo4vkbYcBCbl5DKSGnKd0K3+enoOoQAZ5rYJdP8F
 Eialm1q0BgCKh4h3pSS8fGqJqacuW9K5WknGiJPDgtOre9+AO9L9f09d5iCjyJTo5rlg
 xCxAG2+koKTtIHDpzRUMp5XtfSIe8foYuVUlkWUe0f/R5mxhDmn31CETqJUaSCXCWqAX
 7OWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=0XThhC9U9uKIxJQZ665eKAgfnugmApozs76ScmLZwBk=;
 b=UqN3gNUYzm3Qm4NjPWzogKft2pTvEKsw/34kGCn1ySbS/9QTk6eK6Us0F57ZxlqBq8
 8+24GeogOlPeqXMHuR1X9f5EoH2PLv5blzVUS7rtTxjHfwn+JO5O4X5c8TXbKn5ZOErL
 JaPRHoGNx1SqiGlDw3mtBJ9xv/n/4NZJyICOimiHLhmeqzTZIbtW2lmurIBKefBkov9n
 V7N1lX10VoFbLHXonSU47E1ocIKuhnlLgUOoNleFqFWaOU2gjY5BFMRXvi8d6Oz51L9+
 BK7aKtdGrkkwj2xAmC3+cgCT5G/wf4LTXbWN5Y1fsX+AoHysOuE1XuTqUM0C8uZH7zFc
 DOpw==
X-Gm-Message-State: ACrzQf0znWNQ6b62FGHhUM4YSYY0SLkKDxfuJhIQXfdhzInFvbXxczig
 zkBWbxG90kFdqMGMHWOa+KWuy5W5QKzB
X-Google-Smtp-Source: AMsMyM4eROnmK5/Ehiq7Es0N/CNTVAElIT81oT1dQCstYathZwqVIbJlW0dOv1IpRAIF68hTPKC4ZA==
X-Received: by 2002:ac8:7d13:0:b0:35c:e54e:9c8 with SMTP id
 g19-20020ac87d13000000b0035ce54e09c8mr1590034qtb.320.1665014102301; 
 Wed, 05 Oct 2022 16:55:02 -0700 (PDT)
Received: from serve.minyard.net ([47.184.185.126])
 by smtp.gmail.com with ESMTPSA id
 bi27-20020a05620a319b00b006ce611aef61sm19661018qkb.95.2022.10.05.16.55.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 05 Oct 2022 16:55:02 -0700 (PDT)
Received: from minyard.net (unknown [IPv6:2001:470:b8f6:1b:2d13:71e3:7ea0:219])
 by serve.minyard.net (Postfix) with ESMTPSA id 22E3F180015;
 Wed,  5 Oct 2022 23:55:01 +0000 (UTC)
Date: Wed, 5 Oct 2022 18:54:59 -0500
From: Corey Minyard <minyard@acm.org>
To: Andrew Jeffery <andrew@aj.id.au>
Message-ID: <Yz4ZU8Ron/b9GV6p@minyard.net>
References: <20220812144741.240315-1-andrew@aj.id.au>
 <08c20621-e75d-4a72-82e6-b1980304e20a@app.fastmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <08c20621-e75d-4a72-82e6-b1980304e20a@app.fastmail.com>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Oct 06, 2022 at 09:42:57AM +1030,
 Andrew Jeffery wrote:
 > Hi Corey, > > On Sat, 13 Aug 2022, at 00:17, Andrew Jeffery wrote: > >
 The ASPEED KCS devices don't provide a BMC-side interrupt for t [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.181 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.181 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1ogEEG-00E4WF-7Z
Subject: Re: [Openipmi-developer] [PATCH] ipmi: kcs: Poll OBF briefly to
 reduce OBE latency
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
Cc: linux-arm-kernel@lists.infradead.org,
 openipmi-developer@lists.sourceforge.net, openbmc@lists.ozlabs.org,
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Thu, Oct 06, 2022 at 09:42:57AM +1030, Andrew Jeffery wrote:
> Hi Corey,
> 
> On Sat, 13 Aug 2022, at 00:17, Andrew Jeffery wrote:
> > The ASPEED KCS devices don't provide a BMC-side interrupt for the host
> > reading the output data register (ODR). The act of the host reading ODR
> > clears the output buffer full (OBF) flag in the status register (STR),
> > informing the BMC it can transmit a subsequent byte.
> >
> > On the BMC side the KCS client must enable the OBE event *and* perform a
> > subsequent read of STR anyway to avoid races - the polling provides a
> > window for the host to read ODR if data was freshly written while
> > minimising BMC-side latency.
> 
> Just wondering whether you're happy to pick this one up? I haven't seen 
> it hit the IPMI tree yet.

Sorry.  It's in my tree for 6.2 right now.

I can't push it up to for-next until 6.1-rc1 comes out.

-corey

> 
> Cheers,
> 
> Andrew


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
