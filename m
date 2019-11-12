Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ED1BF8FE8
	for <lists+openipmi-developer@lfdr.de>; Tue, 12 Nov 2019 13:49:00 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1iUVbO-0008QA-Q4; Tue, 12 Nov 2019 12:48:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1iUVbN-0008Pj-6s
 for openipmi-developer@lists.sourceforge.net; Tue, 12 Nov 2019 12:48:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Jzm7986JS/rnjdFEfFSppu8t4BpdNBEDWXZlt0QkzRM=; b=m9DSlulVw/rXlYw61A2TCVnG+D
 ApjTccoOYJP94IFi1XRr3YXwbqRCxwdWQGpc76/Ump1ibu1qlajOlzaIWRCxMDsz3flN14kJ6UKKs
 dLwlUDZDSaH2eefjjCbtvzAjqvSu/TOyTcDrtIJ0txf8ILJK/ENncqK/BhQfn50wHx4s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Jzm7986JS/rnjdFEfFSppu8t4BpdNBEDWXZlt0QkzRM=; b=GYh2gX4UDp3sNk9EfVdJkp4jAv
 FABEB8DLHyYAEoln1wv9lCX7oBnJ+NNjvyCEmhAyG8T8g6qPYgLeSU6BLHRpeBDhqSAoQ0nkfUo28
 zOzzhOVnIvC95dM2lnGggdPOgwzyWqFKwRzMHmH201P/p1g5hAs2vKEVt4AR3d9S+eWI=;
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1iUVbL-00DFBh-Qs
 for openipmi-developer@lists.sourceforge.net; Tue, 12 Nov 2019 12:48:57 +0000
Received: by mail-oi1-f193.google.com with SMTP id l20so14615578oie.10
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 12 Nov 2019 04:48:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Jzm7986JS/rnjdFEfFSppu8t4BpdNBEDWXZlt0QkzRM=;
 b=hpotNEY2jP9EbNNf1lY01Z4p8VZIHhK5Uf/xk9kM4m5UjiTl2tVwaeqotaFn/MYzSM
 uJ4Mq0BTFkLcY129vsyTy4KaTMfLeqYAmhTOUMsz+471cQqdWkLsqYn13ePb5PP3GQAl
 FIJr/Gs+mx892sKJSAmXY3hBRAXniQmqOLy/dfvlvbfaChxaLoslE362YzCtXxlio1rV
 4Mplt/KjTVhRNHDLvKzPgCRAPXynQi8sS51oPWq6D3eze9ddnVYHt2/DWrYg8aFEhDuU
 +hV6wWmnaSnWGSqbavzyD+Q+DnsFLOzGeACwqjE0oNyz7ptTjDepUQo8AZgkSrhp54sm
 vKYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=Jzm7986JS/rnjdFEfFSppu8t4BpdNBEDWXZlt0QkzRM=;
 b=jhebpxjMSRsty69abdVMmPI5agQtzDUmWhG7Gfs2KHk6G59IYP+mebieQFI0iAj1/4
 q3aoU4+pfWgL4Rlcv+AwuNeBXkvOAqBoLeH3wKm8WlTtN4u11J0uvCagJCTJCl5l1IqY
 BRpHh3dLPV/wNTTPwy+AbUF3nHLDb/GdnnGWYr1XuPWJfmzjJkvLIdJM5lS7IFQUVQXL
 38sE1gVZDZld7QlX+LBzqLpX66bscrvGnr1SPdox00pYZ8uMim+h26UDvIL30YSLhfs0
 nGANczzpWGDVHBezB9mLWQVHyy0AOGzqyO7wrH7HFdDtfOagW9ioqLkHFX38dQd7kiEe
 iLmQ==
X-Gm-Message-State: APjAAAX9o8amWSVQDJshJgDfC20xICcOSR6vepokWh6yzQqbgtPEIiJJ
 8o0KCPqV+10cyJ2I70Ya5w==
X-Google-Smtp-Source: APXvYqxtYYaMppT1AsUoDPjRx/kCU171B9mYR9+ekZc1K7T40+2H65m90zVCtGZFXPwcrcaNpUGmew==
X-Received: by 2002:aca:58d6:: with SMTP id m205mr3771826oib.32.1573562927956; 
 Tue, 12 Nov 2019 04:48:47 -0800 (PST)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id l32sm6193445otl.74.2019.11.12.04.48.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Nov 2019 04:48:47 -0800 (PST)
Received: from minyard.net (unknown [192.168.27.180])
 by serve.minyard.net (Postfix) with ESMTPSA id B47A6180046;
 Tue, 12 Nov 2019 12:48:46 +0000 (UTC)
Date: Tue, 12 Nov 2019 06:48:45 -0600
From: Corey Minyard <minyard@acm.org>
To: Vijay Khemka <vijaykhemka@fb.com>
Message-ID: <20191112124845.GE2882@minyard.net>
References: <20191112023610.3644314-1-vijaykhemka@fb.com>
 <20191112023610.3644314-2-vijaykhemka@fb.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191112023610.3644314-2-vijaykhemka@fb.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: fb.com]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.193 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1iUVbL-00DFBh-Qs
Subject: Re: [Openipmi-developer] [PATCH 2/2] drivers: ipmi: Modify max
 length of IPMB packet
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
Cc: cminyard@mvista.com, sdasari@fb.com, linux-aspeed@lists.ozlabs.org,
 Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Mon, Nov 11, 2019 at 06:36:10PM -0800, Vijay Khemka wrote:
> As per IPMB specification, maximum packet size supported is 255,
> modified Max length to 240 from 128 to accommodate more data.

I couldn't find this in the IPMB specification.

IIRC, the maximum on I2C is 32 byts, and table 6-9 in the IPMI spec,
under "IPMB Output" states: The IPMB standard message length is
specified as 32 bytes, maximum, including slave address.

I'm not sure where 128 came from, but maybe it should be reduced to 31.

-corey

> 
> Signed-off-by: Vijay Khemka <vijaykhemka@fb.com>
> ---
>  drivers/char/ipmi/ipmb_dev_int.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/char/ipmi/ipmb_dev_int.c b/drivers/char/ipmi/ipmb_dev_int.c
> index 2419b9a928b2..7f9198bbce96 100644
> --- a/drivers/char/ipmi/ipmb_dev_int.c
> +++ b/drivers/char/ipmi/ipmb_dev_int.c
> @@ -19,7 +19,7 @@
>  #include <linux/spinlock.h>
>  #include <linux/wait.h>
>  
> -#define MAX_MSG_LEN		128
> +#define MAX_MSG_LEN		240
>  #define IPMB_REQUEST_LEN_MIN	7
>  #define NETFN_RSP_BIT_MASK	0x4
>  #define REQUEST_QUEUE_MAX_LEN	256
> -- 
> 2.17.1
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
