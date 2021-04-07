Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 23FCA356E9B
	for <lists+openipmi-developer@lfdr.de>; Wed,  7 Apr 2021 16:28:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lU9At-0001xN-Vb; Wed, 07 Apr 2021 14:28:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1lU9As-0001wz-6n
 for openipmi-developer@lists.sourceforge.net; Wed, 07 Apr 2021 14:28:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jOETYTM8063hIe+H5kFUr3hMwnez+idh/fGpidnkrFU=; b=TtipUVfwYgodsa+Aw+fScSlhNy
 3dZu+r/SwvqK0vrG1iBUaXWGDeZI1W3CBNIfAQaGtzElbt3IYC4ZxcDSy6Y5gY4DOP8WAVVpctgp7
 K+fr+I/0ev/JiMRHRwK8S3icMND/QmHDd1NZT9kgMKv+lO+r67INUGAUjOIYIUIqREZY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jOETYTM8063hIe+H5kFUr3hMwnez+idh/fGpidnkrFU=; b=Gc1PIj3zvNRtIfrkk1arrXwXHH
 NxvRzS+aksItEwqg6C+gfrHfwgAGdSmxTBPV7NfJM9vyGdogm1Qo/+XuZC74j3eahl0+jSLDqbdeD
 LKnBLhzOkvfSITaPksWJ+uVpHr7adiD8FQypd8IVMgIkaAkvkW4AriQMVKw0dKL+EzW8=;
Received: from mail-ot1-f48.google.com ([209.85.210.48])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1lU9Ab-00GmDS-AA
 for openipmi-developer@lists.sourceforge.net; Wed, 07 Apr 2021 14:28:53 +0000
Received: by mail-ot1-f48.google.com with SMTP id
 g8-20020a9d6c480000b02901b65ca2432cso18245172otq.3
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 07 Apr 2021 07:28:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=jOETYTM8063hIe+H5kFUr3hMwnez+idh/fGpidnkrFU=;
 b=LareH35xQvx6q7WindtheaqOLJg6+SkWSAntFgw7HjS3Tk4qDPoemJ1YOk85nmgPvg
 9mZw56tpm53uQl29e+NuknOwYdP0xUGUxUvEzj64/Y7PD4nxPHMwswMAL8E4iHbcAhMx
 h0MdSnsyeyH4HD8RzChFdMtN/SVH7ahCvfGaZEIguKsC0HUgs97KIN7GkKUfnrLM2q+p
 MiRkxAMy9OTppt3tkoTAy1Zc4dPeODYOUi9GXRMbSxlEeRbbwdMytDy+G8hVjD1aj6yC
 LVzR9U89e8uevanQxmVqNCGOgMvZJvLBAuD6ahPOCf7aN31WHqeQdfIWyETLDQl2tc04
 +zlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to;
 bh=jOETYTM8063hIe+H5kFUr3hMwnez+idh/fGpidnkrFU=;
 b=AGUph9VpXEcZE1dNxon+PBFNi1l1Jb7FS0kLuGP4c/xO2JcfZkOnKC9ALzZcHEeR4u
 /N8CxJqL38VWm33pAvLMz9RmRX77ZuIAefAZw4g4PEM+hXInFfiAbl3lgfIKavGZNNVo
 EonZ2bt6fyLEkHY+FQrxceYnT9hZJgZfaGwxYwN+IQ9IhUmNgFa4Q2jWnNfkVRuqAf4O
 AAS28hIFPOJTpcIONwwDr+xybkhySRXxE03wGoXL2L8ZwUnkxb2IwyOsQPKhgDGVFWh0
 58lFWuB44hyOrYFt0QFAaNszQFfycVyWvoXOm67TUHYoGCJ4lq7f5AzUhs1Qdt5H+97Q
 OQLw==
X-Gm-Message-State: AOAM532xYzphKAwpF4YbaDIknptP0qPamhec2nHR6h9iiYXCsw8INaof
 FvmwjF+/h23g+ysQZ20+Pg==
X-Google-Smtp-Source: ABdhPJxYDEUlP0EObBbm9VfamGrvC+u2TKkp/NeoRSzuuBtqMWkEEaA6ECIMT4B8dpnH6MIjEYoYqQ==
X-Received: by 2002:a9d:37b4:: with SMTP id x49mr3212457otb.237.1617805711619; 
 Wed, 07 Apr 2021 07:28:31 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id h24sm5501853otg.20.2021.04.07.07.28.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 07 Apr 2021 07:28:30 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:f036:ecd9:2bd0:ef09])
 by serve.minyard.net (Postfix) with ESMTPSA id 89595180570;
 Wed,  7 Apr 2021 14:28:29 +0000 (UTC)
Date: Wed, 7 Apr 2021 09:28:28 -0500
From: Corey Minyard <minyard@acm.org>
To: Quan Nguyen <quan@os.amperecomputing.com>
Message-ID: <20210407142828.GE7166@minyard.net>
References: <20210330141029.20412-1-quan@os.amperecomputing.com>
 <20210402142124.GV507977@minyard.net>
 <0e7fceff-4a01-5cb0-72eb-8b47d598f1c3@os.amperecomputing.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0e7fceff-4a01-5cb0-72eb-8b47d598f1c3@os.amperecomputing.com>
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1lU9Ab-00GmDS-AA
Subject: Re: [Openipmi-developer] [PATCH v2 0/3] Add Aspeed SSIF BMC driver
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
Cc: devicetree@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>, openbmc@lists.ozlabs.org,
 "Thang Q . Nguyen" <thang@os.amperecomputing.com>,
 linux-kernel@vger.kernel.org, Phong Vo <phong@os.amperecomputing.com>,
 Wolfram Sang <wsa@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 openipmi-developer@lists.sourceforge.net,
 Open Source Submission <patches@amperecomputing.com>,
 linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, Apr 07, 2021 at 08:09:50PM +0700, Quan Nguyen wrote:
> Hi Corey,
> 
> Thank you for reviewing
> I'll put my respond inline below.
> 
> -Quan
> 
> On 02/04/2021 21:21, Corey Minyard wrote:
> > On Tue, Mar 30, 2021 at 09:10:26PM +0700, Quan Nguyen wrote:
> > > This series add support for the Aspeed specific SSIF BMC driver which
> > > is to perform in-band IPMI communication with the host in management
> > > (BMC) side.
> > 
> > I don't have any specific feedback for this, but I'm wondering if it's
> > really necessary.
> > 
> > Why can't the BMC just open the I2C device and use it?  Is there any
> > functionality that this provides that cannot be accomplished from
> > userland access to the I2C device?  I don't see any.
> > 
> > If it tied into some existing framework to give abstract access to a BMC
> > slave side interface, I'd be ok with this.  But I don't see that.
> > 
> 
> The SSIF at the BMC side acts as an I2C slave and we think that the kernel
> driver is unavoidable to handle the I2c slave events
> (https://www.kernel.org/doc/html/latest/i2c/slave-interface.html)
> 
> And to make it works with existing OpenBMC IPMI stack, a userspace part,
> ssifbridge, is needed (https://github.com/openbmc/ssifbridge). This
> ssifbridge is to connect this driver with the OpenBMC IPMI stack so the IPMI
> stack can communicate via SSIF channel in similar way that was implemented
> with BT and KCS (ie: btbridge/kcsbridge and its corespondent kernel drivers
> (https://github.com/openbmc/btbridge and
> https://github.com/openbmc/kcsbridge))

Dang, I don't know why there's not a generic userland interface for
the slave.  And I've made this mistake before :(.

Anyway, you are right, you need a driver.  I'll review.

-corey

> 
> > Unless there is a big need to have this in the kernel, I'm against
> > including this and would suggest you do all this work in userland.
> > Perhaps write a library.  Sorry, but I'm trying to do my part to reduce
> > unnecessary things in the kernel.
> > 
> > Thanks,
> > 
> > -corey
> > 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
