Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 04B9E225E08
	for <lists+openipmi-developer@lfdr.de>; Mon, 20 Jul 2020 14:00:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1jxUT5-000816-TQ; Mon, 20 Jul 2020 12:00:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <cminyard@mvista.com>) id 1jxUT4-00080y-Hu
 for openipmi-developer@lists.sourceforge.net; Mon, 20 Jul 2020 12:00:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4aOpnJ5nNTSoh+24DIHU9Yc6fbVLox9dEbplxI8c3XQ=; b=ktx1YmoajZG5jQkGRiHEtHfU71
 /AJhk4JX6rYehYNy9Nw39PrfiMP+3VAfewL+zKvq4wTSh6qT6liLU+LB9sCYrrhZhMOGNKGD5RwS6
 GcbQy21Mcurlwmwz6/9dumY+OReVM7RVpqHTOsVc9spxeSoESQPOYMHhMBDVaiOAiGYs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4aOpnJ5nNTSoh+24DIHU9Yc6fbVLox9dEbplxI8c3XQ=; b=Wj4NuVjZZp19XU2FYtb71V4gp1
 7TapquglA/NB4bIl4lhnbTOaifl6OjgIoLLkyHYlyszjudcx8CFD6T6cFn2rzICrVBMrr++mDGU6M
 0e2X33YTbYIF4urrO+3q96ihMAB+BuAgi39zhUtYfTNbdHzzCjoP/GqO35gkymbeATdQ=;
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jxUT2-00Di4W-OB
 for openipmi-developer@lists.sourceforge.net; Mon, 20 Jul 2020 12:00:26 +0000
Received: by mail-ot1-f66.google.com with SMTP id g37so11917551otb.9
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 20 Jul 2020 05:00:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mvista-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:reply-to:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=4aOpnJ5nNTSoh+24DIHU9Yc6fbVLox9dEbplxI8c3XQ=;
 b=y6E+AEZ8IQJVm3X2o13djBW+1Vf4VpbL6pKjyhd3+gC2k6hAaZGOARiutNbHtgSGIM
 do+Ufwzue+EVznFQFJ86lM4G9op8pADrEBnZCbVUZr/EuepgaIqcMrJ4VIllxbeqOxep
 uhsxKAIp9IgJfgQpnkldzK47/RfH9NUEpW3wqDcizycFB+qQ66h1cmngPLBQmqi98ZTh
 MXlq+/g3dGwptMSYSOmPyZsDGzrk0+sg7LHuQTyxqwF0JH423Xu7xLd2x4mXIvGuTqL4
 jquQFs8KwKK7y493pfilmkdJcNySDmEbCpZorfdEuPB4btjuCf5FlT6IhdykGqmFuwUc
 F9HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:reply-to
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=4aOpnJ5nNTSoh+24DIHU9Yc6fbVLox9dEbplxI8c3XQ=;
 b=h55Pimf9jVkjG/GOvHlnyvIS39pe3dYIqBXflZjct43mgi0K3wA3q8mXVbvhAM3pWk
 RQd1VBI0XIC8T7a6sbNI0WO5iR4TL4HcCDGc31hZZtmIj3RCDa5+4AIMkEiVksaM3D0o
 w5U3oUipmibP/k/h9uSQOz/7Z9SLmdqkgnLX40b/jO+JS+W0uk5bsPx7Kg24fmvmxukz
 MrneWocWl+Lq5XGEOR+zhC7qBt8yS1NG8MIAbxFnSFg1Klv1dR7ASaTGwsC9IQIRbAVG
 xTEhyJyNBoI+BFh1XuCyKIkkT5tcsZga8hRe8E1HDiQT/sOamwbYv8iqm5NwonuQZtU8
 py/A==
X-Gm-Message-State: AOAM533h3U0ckO4+qnAm43ute5JSUGOhgSPXr7AYvXBr35gnMtkmxrAG
 xNu8VpcPE23nmGsJ4P5sbAXqb3yBN1I=
X-Google-Smtp-Source: ABdhPJw/yHTCBRjfXGBieriP8jxN6PeazZCMLX87Ky6/wie17ObyFIZb8Nq/8qVGhRaeFIsgo4zR8w==
X-Received: by 2002:a9d:4f01:: with SMTP id d1mr17348549otl.73.1595244752642; 
 Mon, 20 Jul 2020 04:32:32 -0700 (PDT)
Received: from minyard.net ([2001:470:b8f6:1b:8045:5514:398b:d262])
 by smtp.gmail.com with ESMTPSA id k2sm3462605otn.56.2020.07.20.04.32.31
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 20 Jul 2020 04:32:32 -0700 (PDT)
Date: Mon, 20 Jul 2020 06:32:30 -0500
From: Corey Minyard <cminyard@mvista.com>
To: Jing Xiangfeng <jingxiangfeng@huawei.com>
Message-ID: <20200720113230.GA2961@minyard.net>
References: <20200720080838.148737-1-jingxiangfeng@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200720080838.148737-1-jingxiangfeng@huawei.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.66 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.5 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jxUT2-00Di4W-OB
Subject: Re: [Openipmi-developer] [PATCH] ipmi: remve duplicate code in
 __ipmi_bmc_register()
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
Cc: gregkh@linuxfoundation.org, openipmi-developer@lists.sourceforge.net,
 arnd@arndb.de, minyard@acm.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Mon, Jul 20, 2020 at 04:08:38PM +0800, Jing Xiangfeng wrote:
> __ipmi_bmc_register() jumps to the label 'out_free_my_dev_name' in an
> error path. So we can remove duplicate code in the if (rv).

Looks correct, queued for next release.

Thanks,

-corey

> 
> Signed-off-by: Jing Xiangfeng <jingxiangfeng@huawei.com>
> ---
>  drivers/char/ipmi/ipmi_msghandler.c | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
> index e1b22fe0916c..737c0b6b24ea 100644
> --- a/drivers/char/ipmi/ipmi_msghandler.c
> +++ b/drivers/char/ipmi/ipmi_msghandler.c
> @@ -3080,8 +3080,6 @@ static int __ipmi_bmc_register(struct ipmi_smi *intf,
>  	rv = sysfs_create_link(&bmc->pdev.dev.kobj, &intf->si_dev->kobj,
>  			       intf->my_dev_name);
>  	if (rv) {
> -		kfree(intf->my_dev_name);
> -		intf->my_dev_name = NULL;
>  		dev_err(intf->si_dev, "Unable to create symlink to bmc: %d\n",
>  			rv);
>  		goto out_free_my_dev_name;
> -- 
> 2.17.1
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
