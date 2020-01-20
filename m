Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B80E1430CD
	for <lists+openipmi-developer@lfdr.de>; Mon, 20 Jan 2020 18:28:30 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1itaqi-0004iR-Fk; Mon, 20 Jan 2020 17:28:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <cminyard@mvista.com>) id 1itaqh-0004iK-Bp
 for openipmi-developer@lists.sourceforge.net; Mon, 20 Jan 2020 17:28:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=l7rXrWc9zdyZC8ngED66aztSeYAIdSfuXFbxTohqXwo=; b=N8byf8ytmLXkAdYSO4WJBiWLO0
 rWFTgTDrPANkPBRhSBbGwTusioUMRB0FUfs1+gcPwIVK4YulsIG6A9J2jv7k5Zvq6yUtAxgxjmGS8
 lcP9Yn0oTKtfj7Om+1ixe3AIBDEgSuW26c1BE2UvJ5LeuvPgyFggKAL//vKsNpL6ccBs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=l7rXrWc9zdyZC8ngED66aztSeYAIdSfuXFbxTohqXwo=; b=W0HZHuIVCddCwmbcEGheEBtwmd
 cah4GEXLumNTFSvzBgnFjVuv7wozwmAIAirDwldgrnlDmb89gE/VvOXv+pSVP4YKEpXEJTfAkfs2F
 gTF8ge5mIlGupxVyfn+8OjvqWOIy+tIOAXQKGvoTuaUtZkCWZ6QZs04IlKr5Xp2ibDVQ=;
Received: from mail-yb1-f196.google.com ([209.85.219.196])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1itaqZ-00FBR6-7d
 for openipmi-developer@lists.sourceforge.net; Mon, 20 Jan 2020 17:28:27 +0000
Received: by mail-yb1-f196.google.com with SMTP id o199so82138ybc.4
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 20 Jan 2020 09:28:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mvista-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:reply-to:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=l7rXrWc9zdyZC8ngED66aztSeYAIdSfuXFbxTohqXwo=;
 b=FxbANqXV7CZGzzBj+hbAItH/ABPzjboPJBwcqWNsAjJuV6ZzuMFWZt//n7SNS2Wayf
 k0mrNKGCC8fY1WKehL7UEw5/dAFcFbpnJ/yv7FzE7CJKao/3UlEqXPMm3xJWLCuI7yxT
 O8CzgQT7Sxix0lNBYH6ezfmW/UAVM6lry0pzHCbb/L/F8f7HrR6LqIO98R9zi/w7rFMh
 /R/x8fEZNw4g3KbH+LUN3P47dkLHjf+1R/ZqTzZmIB4759TViL/KZQFiUrZS7byD/O7L
 cNXrebX0KFx5LoQJ63cYPxa7yQ7gvN1nrLoRIQrl5djAPy9p+FVedKPFK1VZTmRlT0R7
 6xUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:reply-to
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=l7rXrWc9zdyZC8ngED66aztSeYAIdSfuXFbxTohqXwo=;
 b=GX1eeDoxI8stg4JeUJWKPFKMR5ygOm1qQ3tOLLYBwJLYQNuz5oQpxDPLts1bj8EeCn
 VGzD6XRrxp8aZJ7tBPr1iXasRhw+YyzcuGdT9pev2e+NRCgpo1rts6Af4SW41IT9bWBC
 cKdIMl0w57hIa8UzV3nCE31GClwM4gX+pG0zN1hrKMABR4ZboTD0ND/6yQ5QzoAAu9F2
 QvWP9e4XCghrw/M/TElf/wGRhhhX8FS+extZ+R4lBZBLObSldhT5xS4HjZ+aVU0v6rJ6
 bT8P1VedZIoNos/ixiOGSK5lWWtv1xoHHb5IvvhYIAcIw+pJoyCmHEw0H78u0X/ZG+Bo
 SP+A==
X-Gm-Message-State: APjAAAWOt5oZuyYSeHvIIsvx5ewnqUFVn0wMirQFnHhwrOSSKev+OWT8
 2Rxrf4Zbx6FOsWMZU+A9lk/f33BRtEM=
X-Google-Smtp-Source: APXvYqxQlqgtwctnFJkk3FTNJcvt4oudhWgrQUyGHRg/Lus5T12Up6Sc2lVZkysElds60n0QZ1910Q==
X-Received: by 2002:a9d:5885:: with SMTP id x5mr311761otg.132.1579539695269;
 Mon, 20 Jan 2020 09:01:35 -0800 (PST)
Received: from minyard.net ([2001:470:b8f6:1b:9c9c:d583:ce3d:f87a])
 by smtp.gmail.com with ESMTPSA id n16sm12479084otk.25.2020.01.20.09.01.33
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 20 Jan 2020 09:01:34 -0800 (PST)
Date: Mon, 20 Jan 2020 11:01:32 -0600
From: Corey Minyard <cminyard@mvista.com>
To: Asmaa Mnebhi <Asmaa@mellanox.com>
Message-ID: <20200120170132.GT2886@minyard.net>
References: <20200114144031.358003-1-colin.king@canonical.com>
 <DB6PR0501MB2712BEBCF959566EAB063769DA340@DB6PR0501MB2712.eurprd05.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DB6PR0501MB2712BEBCF959566EAB063769DA340@DB6PR0501MB2712.eurprd05.prod.outlook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.219.196 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.196 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1itaqZ-00FBR6-7d
Subject: Re: [Openipmi-developer] [PATCH][next] drivers: ipmi: fix
 off-by-one bounds check that leads to a out-of-bounds write
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
Cc: Arnd Bergmann <arnd@arndb.de>, Vadim Pasternak <vadimp@mellanox.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "kernel-janitors@vger.kernel.org" <kernel-janitors@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Colin King <colin.king@canonical.com>,
 "openipmi-developer@lists.sourceforge.net"
 <openipmi-developer@lists.sourceforge.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue, Jan 14, 2020 at 03:50:22PM +0000, Asmaa Mnebhi wrote:
> Reviewed-by: Asmaa Mnebhi <asmaa@mellanox.com>

Thanks, I've picked this up in my next tree.

-corey

> 
> -----Original Message-----
> From: Colin King <colin.king@canonical.com> 
> Sent: Tuesday, January 14, 2020 9:41 AM
> To: Corey Minyard <cminyard@mvista.com>; Arnd Bergmann <arnd@arndb.de>; Greg Kroah-Hartman <gregkh@linuxfoundation.org>; Vadim Pasternak <vadimp@mellanox.com>; Asmaa Mnebhi <Asmaa@mellanox.com>; openipmi-developer@lists.sourceforge.net
> Cc: kernel-janitors@vger.kernel.org; linux-kernel@vger.kernel.org
> Subject: [PATCH][next] drivers: ipmi: fix off-by-one bounds check that leads to a out-of-bounds write
> 
> From: Colin Ian King <colin.king@canonical.com>
> 
> The end of buffer check is off-by-one since the check is against an index that is pre-incremented before a store to buf[]. Fix this adjusting the bounds check appropriately.
> 
> Addresses-Coverity: ("Out-of-bounds write")
> Fixes: 51bd6f291583 ("Add support for IPMB driver")
> Signed-off-by: Colin Ian King <colin.king@canonical.com>
> ---
>  drivers/char/ipmi/ipmb_dev_int.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/char/ipmi/ipmb_dev_int.c b/drivers/char/ipmi/ipmb_dev_int.c
> index 9fdae83e59e0..382b28f1cf2f 100644
> --- a/drivers/char/ipmi/ipmb_dev_int.c
> +++ b/drivers/char/ipmi/ipmb_dev_int.c
> @@ -279,7 +279,7 @@ static int ipmb_slave_cb(struct i2c_client *client,
>  		break;
>  
>  	case I2C_SLAVE_WRITE_RECEIVED:
> -		if (ipmb_dev->msg_idx >= sizeof(struct ipmb_msg))
> +		if (ipmb_dev->msg_idx >= sizeof(struct ipmb_msg) - 1)
>  			break;
>  
>  		buf[++ipmb_dev->msg_idx] = *val;
> --
> 2.24.0
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
