Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 80141411751
	for <lists+openipmi-developer@lfdr.de>; Mon, 20 Sep 2021 16:42:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mSKUa-0000IT-3r; Mon, 20 Sep 2021 14:42:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <tcminyard@gmail.com>) id 1mSKUY-0000IL-73
 for openipmi-developer@lists.sourceforge.net; Mon, 20 Sep 2021 14:41:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8fL+AzXhgquHQUasnCamb6PGeywzRH2M/eDrRwx6fqI=; b=dao6m0Sf9HpJ/rXAinLSC4eAIs
 +gh6uWq761c25wFnPCEGjP+W/zFYoJsKAHV2Pu5t898TsD3/Bd36zvhR4FZEFZoFSjSyQnQl3eTuB
 NBc9i8Ew4EiDw50ogwgH41qt4wxqsSsXK8tSvvYS4JBwcjM+g9SmXhWILIltGJghJMqc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8fL+AzXhgquHQUasnCamb6PGeywzRH2M/eDrRwx6fqI=; b=PUoDDAm7DQ8McbtA3aO9Brw1/a
 EgMOXWfLOM6KHHThTKk9xSBXU2wzAAXM0DXMM9+LIcqYMo1ar9JgjRWGCfGKo0p8EpS9J9BrPoTQp
 DIdG55xIQQhPwqpBuOrXZW+Ve5LPxXSODH96iV9Yz7sX7O0Zjx9y6DUnmCHqMXGUWrlA=;
Received: from mail-ot1-f47.google.com ([209.85.210.47])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mSKUU-0004FW-Vh
 for openipmi-developer@lists.sourceforge.net; Mon, 20 Sep 2021 14:41:58 +0000
Received: by mail-ot1-f47.google.com with SMTP id
 77-20020a9d0ed3000000b00546e10e6699so12745903otj.2
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 20 Sep 2021 07:41:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=8fL+AzXhgquHQUasnCamb6PGeywzRH2M/eDrRwx6fqI=;
 b=XEMyYrjtQg84L9kMgSD8fG+DKeLblEtrbgWDIqGd69Okof7pacFePN+aXB8/srnj4S
 mf2CNYWwhhCqZcpw/vkVwPM7xCII3cI5Jj2SEDl4ZGqvwzHWDoZajyTDEKx29qzEUzbg
 y8gAhkGRNEULhsFI4ucL9dzazz//rcvVsd1LaR55O4yDCki2nQf8PYXy39T8eJUVszrt
 WqE+NSJKayAgw/Bcr+CylZE4pgTx3H8cSOdX/eywxFGtEw/EGokMRnizsX/ZIBmDxCim
 SYM6PPxpImEp0tgNxmPZqeQUsMu3DQeDYtnpq/Dd3Lu3ZV5e4WyskQXe9wF8nHPqxi5g
 utTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to;
 bh=8fL+AzXhgquHQUasnCamb6PGeywzRH2M/eDrRwx6fqI=;
 b=N2UiNccjq9/YCmhiNVhVofyoegaPuwBNUndt6JyTa/2vnmUBU/DEZMqKng7NJpr4yM
 G3/5h0j438G90TlP7YZdz18WXMKzsthQcoD7Vpy6Vs2sBaoU2Rb6QrtSOo3nSi6zxIVF
 q0QtF/tylspUehpDz4+y7JduqY3JGV0+D2esm25C/joerWO0ogwYzL2egAXqNlpc0wDD
 VRAhmqlxsO2ecuSORZyC5eWHoizQ1wYGO6Me5+hnc/b/9XZ+458pJmz8t2Ce02ZfGNiO
 k5tY0ibnp5Ovr4w0Ljse3YHAqXrgjNL8/TsWZlsKInWXs18Ryv7NOs6cte/ilCEyXHlF
 PZtQ==
X-Gm-Message-State: AOAM532CJ+tuo07Yf0nj4/sfI8bDffQUy6qqrLkWE9F/NGKHE829Blkp
 5qt/dqA7SfKJELJOV4LlIJWywSwRig==
X-Google-Smtp-Source: ABdhPJzeqzTCUFPHNVnz8FT1VWYkTEFb+Wl9zWx6gi1ks73px4f4Pwco1J5vRr1wzRyQ+4/1C4cPQw==
X-Received: by 2002:a05:6830:1513:: with SMTP id
 k19mr5690836otp.41.1632148909302; 
 Mon, 20 Sep 2021 07:41:49 -0700 (PDT)
Received: from serve.minyard.net ([47.184.156.158])
 by smtp.gmail.com with ESMTPSA id d7sm561053otl.19.2021.09.20.07.41.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Sep 2021 07:41:48 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:85f2:365c:992b:e354])
 by serve.minyard.net (Postfix) with ESMTPSA id 95F941800EF;
 Mon, 20 Sep 2021 14:41:47 +0000 (UTC)
Date: Mon, 20 Sep 2021 09:41:46 -0500
From: Corey Minyard <minyard@acm.org>
To: Anton Lundin <glance@acc.umu.se>
Message-ID: <20210920144146.GD545073@minyard.net>
References: <20210916145300.GD108031@montezuma.acc.umu.se>
 <20210916163945.GY545073@minyard.net>
 <20210917101419.GE108031@montezuma.acc.umu.se>
 <20210917120758.GA545073@minyard.net>
 <20210917125525.GF108031@montezuma.acc.umu.se>
 <20210917131916.GB545073@minyard.net>
 <20210917132648.GG108031@montezuma.acc.umu.se>
 <20210920113802.GC545073@minyard.net>
 <20210920141231.GH108031@montezuma.acc.umu.se>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210920141231.GH108031@montezuma.acc.umu.se>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Sep 20, 2021 at 04:12:31PM +0200, Anton Lundin wrote:
 > On 20 September, 2021 - Corey Minyard wrote: > > > Well, that was dumb.
 Fix follows... > > > > Thanks for working on this. On your appro [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.47 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.47 listed in list.dnswl.org]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1mSKUU-0004FW-Vh
Subject: Re: [Openipmi-developer] Issue with panic handling and ipmi
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
Cc: openipmi-developer@lists.sourceforge.net,
 LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Mon, Sep 20, 2021 at 04:12:31PM +0200, Anton Lundin wrote:
> On 20 September, 2021 - Corey Minyard wrote:
> 
> > Well, that was dumb.  Fix follows...
> > 
> > Thanks for working on this.  On your approval, I'll send this to Linus.
> 
> Winner winner chicken dinner!
> 
> This fixes the issue, and now panic timer works, and we get crashdumps
> to pstore.
> 
> Great job, I approve!
> 
> 
> Thanks for your help getting this fixed.

Thanks for reporting this.  I'll get the patch in.

-corey

> 
> 
> //Anton


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
