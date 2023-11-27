Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 984CF7F97C4
	for <lists+openipmi-developer@lfdr.de>; Mon, 27 Nov 2023 04:03:38 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1r7Ru7-0004NI-H0;
	Mon, 27 Nov 2023 03:03:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andrew@codeconstruct.com.au>) id 1r7Ru3-0004NA-Hy
 for openipmi-developer@lists.sourceforge.net;
 Mon, 27 Nov 2023 03:03:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Hk7MBX8MDvUBYr6oc5O7guJNHMGpcWV4KcgN0+fKl48=; b=kYEq5aeepLI4x1YBwe6s04LPa8
 zsZmtC4IKI8gDLQ8PrI9vhXvF9+NJ5uD2/T1N8zi+ZOYTbyv+fzIKwm/YpvpA/7N8b50icMTw43B9
 NVfxoGITMcjFpdHZnoRo5zkEw+V88U4AarU1NaJzkd0f8IxMW5qR+Z8A8UEX9qtW+qFQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Hk7MBX8MDvUBYr6oc5O7guJNHMGpcWV4KcgN0+fKl48=; b=c3mUatuCEe9jC1svlw7fe1QEqk
 LrkD5RIfte86JpU5g5DHbftFPtJmenGhg95526lxUS4Cfau83hR0Xr7IZQFDpomw37MpEptHsrzYi
 fkpdon/Vb1PWv3JESSZ7bGES/99IAjBn36kqfNvPqcaqoHbvakxLaUDD1d3totgZYKYk=;
Received: from pi.codeconstruct.com.au ([203.29.241.158]
 helo=codeconstruct.com.au)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1r7Ru0-00GQMF-Bc for openipmi-developer@lists.sourceforge.net;
 Mon, 27 Nov 2023 03:03:18 +0000
Received: from [192.168.68.112] (203-57-215-234.dyn.iinet.net.au
 [203.57.215.234])
 by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 12E4920034;
 Mon, 27 Nov 2023 11:02:58 +0800 (AWST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=codeconstruct.com.au; s=2022a; t=1701054179;
 bh=Hk7MBX8MDvUBYr6oc5O7guJNHMGpcWV4KcgN0+fKl48=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References;
 b=ZeRgVU/4VSclrn21nv0OXHyxH9F3YB91YtHDfUw/cUXVope2UpbWMTh6n5h9cJpL4
 Bk3djASUe0W/Vuz/ZA5FPspp9gZ3AHMpM+DpQ4E0XHgPMEN7yPsKzyW+AEfcyxizRt
 HgC/UAkLcPgUZ2D7hLDld3/IEl5b84WSYQtAwFBKoK2CYgua5ubWNcyL4tsiMf8w0b
 dHPWviSg1HVZ/aqH6OnVmIC8P0AVOk5YiZ28FmQWOUpi/Oa/UC7efZPKRvNn+NmOnT
 bA90AmjpvquL36qZtLD8eJ8IsDZpnemGtijHAMqOzUcfLVLtd6+tyPlKR9MsgauZwV
 WOqe+jTGIHTQQ==
Message-ID: <4e355b4b19d49753d900094c900f2586d283179e.camel@codeconstruct.com.au>
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
Date: Mon, 27 Nov 2023 13:32:57 +1030
In-Reply-To: <20231120124001.00003cbc@Huawei.com>
References: <20231103061522.1268637-1-andrew@codeconstruct.com.au>
 <20231103061522.1268637-9-andrew@codeconstruct.com.au>
 <20231103150522.00004539@Huawei.com>
 <a015924b542fd35fe84357eebddd14cfae83dace.camel@codeconstruct.com.au>
 <20231120124001.00003cbc@Huawei.com>
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, 2023-11-20 at 12:40 +0000, Jonathan Cameron wrote:
 > On Mon,
 06 Nov 2023 10:26:38 +1030 > Andrew Jeffery <andrew@codeconstruct.com.au>
 wrote: > > > On Fri, 2023-11-03 at 15:05 +0000, Jonathan [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1r7Ru0-00GQMF-Bc
Subject: Re: [Openipmi-developer] [PATCH 08/10] ipmi: kcs_bmc: Track clients
 in core
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
Cc: jk@codeconstruct.com.au, openipmi-developer@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, minyard@acm.org, aladyshev22@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Mon, 2023-11-20 at 12:40 +0000, Jonathan Cameron wrote:
> On Mon, 06 Nov 2023 10:26:38 +1030
> Andrew Jeffery <andrew@codeconstruct.com.au> wrote:
> 
> > On Fri, 2023-11-03 at 15:05 +0000, Jonathan Cameron wrote:
> > > On Fri,  3 Nov 2023 16:45:20 +1030
> > > Andrew Jeffery <andrew@codeconstruct.com.au> wrote:
> > >   
> > > > I ran out of spoons before I could come up with a better client tracking
> > > > scheme back in the original refactoring series:
> > > > 
> > > > https://lore.kernel.org/all/20210608104757.582199-1-andrew@aj.id.au/
> > > > 
> > > > Jonathan prodded Konstantin about the issue in a review of Konstantin's
> > > > MCTP patches[1], prompting an attempt to clean it up.
> > > > 
> > > > [1]: https://lore.kernel.org/all/20230929120835.0000108e@Huawei.com/
> > > > 
> > > > Prevent client modules from having to track their own instances by
> > > > requiring they return a pointer to a client object from their
> > > > add_device() implementation. We can then track this in the core, and
> > > > provide it as the argument to the remove_device() implementation to save
> > > > the client module from further work. The usual container_of() pattern
> > > > gets the client module access to its private data.
> > > > 
> > > > Signed-off-by: Andrew Jeffery <andrew@codeconstruct.com.au>  
> > > 
> > > Hi Andrew,
> > > 
> > > A few comments inline.
> > > More generally, whilst this is definitely an improvement I'd have been tempted
> > > to make more use of the linux device model for this with the clients added
> > > as devices with a parent of the kcs_bmc_device.  That would then allow for
> > > simple dependency tracking, binding of individual drivers and all that.
> > > 
> > > What you have here feels fine though and is a much less invasive change.  
> > 
> Sorry for slow reply, been traveling.

No worries, I've just got back from travel myself :)

> 
> > Yeah, I had this debate with myself before posting the patches. My
> > reasoning for the current approach is that the clients don't typically
> > represent a device, rather a protocol implementation that is
> > communicated over a KCS device (maybe more like pairing a line
> > discipline with a UART). It was unclear to me whether associating a
> > `struct device` with a protocol implementation was stretching the
> > abstraction a bit, or whether I haven't considered some other
> > perspective hard enough - maybe we treat the client as the remote
> > device, similar to e.g. a `struct i2c_client`?
> 
> That was my thinking.  The protocol is used to talk to someone - the endpoint
> (similar to i2c_client) so represent that. If that device is handling multiple
> protocols (no idea if that is possible) - that is fine as well, it just becomes
> like having multiple i2c_clients in a single package (fairly common for sensors),
> or the many other cases where we use a struct device to represent just part
> of a larger device that operates largely independently of other parts (or with
> well defined boundaries).

Alright, let me think about that a bit more.

Thanks for the feedback,

Andrew


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
