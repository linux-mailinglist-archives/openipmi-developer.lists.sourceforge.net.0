Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D98B1D11C7
	for <lists+openipmi-developer@lfdr.de>; Wed, 13 May 2020 13:51:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1jYpuz-0006ML-BQ; Wed, 13 May 2020 11:51:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <cminyard@mvista.com>) id 1jYpuv-0006M5-Vv
 for openipmi-developer@lists.sourceforge.net; Wed, 13 May 2020 11:51:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BrYzLniezoDD4jCcvGE9yS2QzVsTTMBnOOwvkU8zNzA=; b=QxZNkFcRVM0JOk/8xTYSLVI2n7
 Jt84c2WxxdHipH/4lcIfBgpUatHr5T2C7iO5WAgsQJa59cS8CCQJr2JpXkz/VyH6cRA3pmG9F/b2e
 JVIcvO4Mj6I6LSIimDecl6GK4SUB6XgWr/ZL+Eg6/Cz2OxxdTnhgqC48aUWJz5vf0uQI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=BrYzLniezoDD4jCcvGE9yS2QzVsTTMBnOOwvkU8zNzA=; b=UCJYGftktqdko4SboorkLlqo6o
 2/4mkgBeoPgaSOZ6YxeOlSkjGWPB6DnjIkrEAxEtkqu4lgtt3Y/XmcEs9tLeJmqE/kdlpAeBoniYS
 ZbUPZ3Bc5JiwDav/EUmBmQnT21EzY/UsGVgsoMNme7jV3KiOvdynORpTgP0Cv7jNYRXE=;
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jYpus-00CwAT-29
 for openipmi-developer@lists.sourceforge.net; Wed, 13 May 2020 11:51:17 +0000
Received: by mail-oi1-f193.google.com with SMTP id 19so21145480oiy.8
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 13 May 2020 04:51:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mvista-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:reply-to:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=BrYzLniezoDD4jCcvGE9yS2QzVsTTMBnOOwvkU8zNzA=;
 b=YsA9fgHHa2e5ncH25Q88XbMFzpKGXlpGE3QR/2LaNziM/owblmqmFkQB/x4emIWvbj
 1Brwjz/mJUDeFzqFPpqG5VvWRW9uAzeieKEfSxXQyrrTp3NCxfN9s+ZlHxHiUeObisgx
 UVMbHGSyyoJXb17zhfVHTD1AjcxSJLYV46fV9fNKjBDABuaJu79wuUHsx1FT59O6ncb9
 r/L0ALdZMYv/ugvzo902/viYrPobOlW9gMNZuPFbBN7HlPswY/JO8zU24u3+sD3vgn+7
 AyejM9N5+E5dJud5xcC4jVcdazBm2RXtAW3ilJ6nS+SuGZKxV6R148L3yA8G2vdGl0jJ
 m+9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:reply-to
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=BrYzLniezoDD4jCcvGE9yS2QzVsTTMBnOOwvkU8zNzA=;
 b=t6Y5jqTiuofcqao/lmAOeCNCRFuBzbGOI+5razrnxFbWdPhVGMWs/rm0sNTpQ9ijnK
 kIjjgJJcgX+Frz8z46X/N9gOLmk36Hm498YxwKDaJVjhdl2cTyGORhL18tilWVd1IPSq
 2HVUMR31OT5up78Ziwmv75IDHDcLupOzbBd+vpgT4AQJbVCsebHYbROpskKut4Vznkto
 IMz9lG5RFHHP9n0k2r1bToAVPevK27QAT9taiyMxBhXFlME7GMFRNsQFhdY3oGu5gqWx
 Qpr+XYAdyeKkTEdY4szK+GcPzBKVwcQ2MtqbAIOosd/VrpFjGUUalp1ts5xggXnmPpCz
 x8og==
X-Gm-Message-State: AGi0PuaxcGP3d5NOC67Fgx193Tl7HoTKLQ+ZmM1ulP/fumqSjwonmvzI
 zFuS9enOmnk++yGcLxXd0ANFIj2rK18=
X-Google-Smtp-Source: APiQypLuNe12ugFwb8BiDgFQhZs6T49t8p9NJ0NCnmSifXnS4d7Rz9x8ZD84j5T6gRTZK6XeTAMC9A==
X-Received: by 2002:aca:ed4d:: with SMTP id l74mr25612399oih.104.1589368707413; 
 Wed, 13 May 2020 04:18:27 -0700 (PDT)
Received: from minyard.net ([2001:470:b8f6:1b:8b39:c3f3:f502:5c4e])
 by smtp.gmail.com with ESMTPSA id n11sm5941751oij.21.2020.05.13.04.18.26
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 13 May 2020 04:18:26 -0700 (PDT)
Date: Wed, 13 May 2020 06:18:25 -0500
From: Corey Minyard <cminyard@mvista.com>
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Message-ID: <20200513111825.GB9928@minyard.net>
References: <20200326210958.13051-2-wsa+renesas@sang-engineering.com>
 <20200512214532.14117-1-minyard@acm.org>
 <20200513083745.GC1043@ninjato>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200513083745.GC1043@ninjato>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jYpus-00CwAT-29
Subject: Re: [Openipmi-developer] [PATCH] char: ipmi: convert to use
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
Reply-To: cminyard@mvista.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 openipmi-developer@lists.sourceforge.net, Arnd Bergmann <arnd@arndb.de>,
 minyard@acm.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, May 13, 2020 at 10:37:46AM +0200, Wolfram Sang wrote:
> On Tue, May 12, 2020 at 04:45:32PM -0500, minyard@acm.org wrote:
> > From: Wolfram Sang <wsa+renesas@sang-engineering.com>
> > 
> > Move away from the deprecated API.
> > 
> > Based on a patch by Wolfram Sang <wsa+renesas@sang-engineering.com>.
> > 
> > Signed-off-by: Corey Minyard <cminyard@mvista.com>
> > ---
> > I think this works.
> 
> Yes, we can do it like this (despite the question from earlier if it is
> really needed). I fixed other drivers using this pattern, too.

I was wondering whether this is really needed, too, but I'm not 100%
sure it can be removed in all cases.  This is the safer route.

> 
> As Stephen Rothwell pointed out, you either need to remove my "From:" or
> add my SoB. I am fine with both.

It was enough of a rewrite that you as the author didn't seem right.
I've fixed the From line, sorry about that.

-corey

> 
> Thanks,
> 
>    Wolfram
> 




_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
