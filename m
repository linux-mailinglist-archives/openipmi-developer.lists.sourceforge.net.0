Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4840B594BC1
	for <lists+openipmi-developer@lfdr.de>; Tue, 16 Aug 2022 03:16:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1oNlBU-0000mN-IM;
	Tue, 16 Aug 2022 01:15:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jay.vosburgh@canonical.com>) id 1oNlBT-0000mH-85
 for openipmi-developer@lists.sourceforge.net;
 Tue, 16 Aug 2022 01:15:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-Transfer-Encoding:
 Content-ID:Content-Type:MIME-Version:References:In-reply-to:Subject:cc:To:
 From:Sender:Reply-To:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TKk7nUXWyWNct9Own61RcbBY2dMxoTnVs6vwcCM0WHY=; b=CYIcqQraWnGSRbj6EZYH27jM1k
 ZBkGFcW2v2bsJjpRn6J3mhtyuuT91Ll3DfXbspknQlxd4d0iJWd5p5IuukL7FtPdGLP6LxQ+fX28d
 pnze4DCa/zh+s7f9pWY1YkyIftOENfLE5nlo/Cy03dIcV/Vn0VniUDSSigUdfnBTe9zc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-Transfer-Encoding:Content-ID:Content-Type:
 MIME-Version:References:In-reply-to:Subject:cc:To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TKk7nUXWyWNct9Own61RcbBY2dMxoTnVs6vwcCM0WHY=; b=UTMaSHxZFxbR5/wlojoQDOkHQL
 jqmQvVETx31P0mHMvsE/CKf2yYr3GRp52330YEzEr2Kj5wQunV4ijT8MR883NuW3wRCeWdWxuqTmv
 wTXHuG0ZIbSoUFZodO4O3atdeSM5CVWMmCMUBLk6RxaI7ZOPQGlUCsAYGo0j77dFLVZo=;
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oNlBQ-003pwM-8X for openipmi-developer@lists.sourceforge.net;
 Tue, 16 Aug 2022 01:15:55 +0000
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com
 [209.85.216.71])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 5435B3F12F
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 16 Aug 2022 01:15:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1660612543;
 bh=TKk7nUXWyWNct9Own61RcbBY2dMxoTnVs6vwcCM0WHY=;
 h=From:To:cc:Subject:In-reply-to:References:MIME-Version:
 Content-Type:Date:Message-ID;
 b=CcOBkS8e5BCgvfRgnqPRjvB61kMhrVpIeddr8fnRRv87Yv3xrOtJliWHUczOR1PVi
 SjHQheVOGGyBjyOJPxamvpV1JNlQFK2uFH3fjoSbp58dyapRrcS0MJ7DOhOC/hM6iH
 aJpWQqxmZZ8IoX9S8BldYb69f4DF9Z92F1TGbZ5E6I/hxp8Lffassj0xpaOG1hd4/i
 4JFkveyun9JrIY/cnSGPfctLuUHxbODJSUL/TWId2m0K8YzfLBtuF3g/6rGGbpb3Lv
 IPX/ZtaPvxyTrV/Z8diIk6wQ6pBzhnaWBzU5aWrV+h8xVsLVp/Aj78NcIxE9NUhZrT
 qwA2kqrvqPbaQ==
Received: by mail-pj1-f71.google.com with SMTP id
 b5-20020a17090a6e0500b001f3076ab926so4480267pjk.1
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 15 Aug 2022 18:15:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=message-id:date:content-transfer-encoding:content-id:mime-version
 :comments:references:in-reply-to:subject:cc:to:from
 :x-gm-message-state:from:to:cc;
 bh=TKk7nUXWyWNct9Own61RcbBY2dMxoTnVs6vwcCM0WHY=;
 b=PVlREpOCQ15iJ3DwTnQ7SweeSSS0hxi4Z9mFTWSa3bsiEUQ8tirYFDU+330SB752/6
 /qgFQ60EY5qNo7HYMN/nB+O/XPZiMoruMrYgbkxNLZAUJV4HoEW/B0tpE+pUi8LRyCN3
 JGTTCTG+/YWDnvTeDEGlKhrV6MH6P9X3kjLWI3bcVUQZmzt5sRoKf20VVWu5l9XqqmjV
 1uHqu92RBdDRYVFIQO3AiEBY3ZS2I/xn4/xi83KemPO4tJ0vrA+6QnyoeCMil0lKy/Lf
 eMgf+OI7AIH55a5EVb1reOyZKZMoHqkEHNA6M4gi9ykku0x58prLcc9jysQuVKYziEN2
 o//g==
X-Gm-Message-State: ACgBeo2BskDDl2QqCMaS67XSjs3goWbLpqaNc3VIjiQakZ99a0Y0xcVa
 iH2sIFRKw3hIl4N5+VmNmYIcaxnM4CgqKuazl2KapBTc45Ybcw2TYqHX1N3i1rMec3cADGR6b51
 K9vxSL/AHa1pwvGkmKPfd3kTSDlP5By3x3Mk66YirOI6tcB8U2gk8i4aRQg==
X-Received: by 2002:a17:90b:4d07:b0:1ef:521c:f051 with SMTP id
 mw7-20020a17090b4d0700b001ef521cf051mr31127011pjb.164.1660612541602; 
 Mon, 15 Aug 2022 18:15:41 -0700 (PDT)
X-Google-Smtp-Source: AA6agR6WFHFBzlqEOQqVXA2aLRq0+5mbl+lAHko1ZkPKcX6C3D3TlclDVkwaeN9pkcnkn9HyA0pNtg==
X-Received: by 2002:a17:90b:4d07:b0:1ef:521c:f051 with SMTP id
 mw7-20020a17090b4d0700b001ef521cf051mr31126988pjb.164.1660612541240; 
 Mon, 15 Aug 2022 18:15:41 -0700 (PDT)
Received: from famine.localdomain ([50.125.80.157])
 by smtp.gmail.com with ESMTPSA id
 j125-20020a625583000000b0052e987c64efsm7315181pfb.174.2022.08.15.18.15.40
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 15 Aug 2022 18:15:40 -0700 (PDT)
Received: by famine.localdomain (Postfix, from userid 1000)
 id 257C361193; Mon, 15 Aug 2022 18:15:40 -0700 (PDT)
Received: from famine (localhost [127.0.0.1])
 by famine.localdomain (Postfix) with ESMTP id 1DC6F9FA79;
 Mon, 15 Aug 2022 18:15:40 -0700 (PDT)
From: Jay Vosburgh <jay.vosburgh@canonical.com>
To: minyard@acm.org
In-reply-to: <20220813013516.GJ2939323@minyard.net>
References: <1095.1660347198@famine> <20220813013516.GJ2939323@minyard.net>
Comments: In-reply-to Corey Minyard <minyard@acm.org>
 message dated "Fri, 12 Aug 2022 20:35:16 -0500."
X-Mailer: MH-E 8.6+git; nmh 1.6; Emacs 29.0.50
MIME-Version: 1.0
Content-ID: <7140.1660612540.1@famine>
Date: Mon, 15 Aug 2022 18:15:40 -0700
Message-ID: <7141.1660612540@famine>
X-Spam-Score: -3.2 (---)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Corey Minyard <minyard@acm.org> wrote: >On Fri, Aug 12, 2022
 at 04:33:18PM -0700, Jay Vosburgh wrote: >> We have observed issues wherein
 the IPMI driver will sleep forever in >> uninterruptible wait with mutexes
 held (specifically, dyn_mut [...] 
 Content analysis details:   (-3.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.125.188.123 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1oNlBQ-003pwM-8X
Subject: Re: [Openipmi-developer] [PATCH] ipmi: don't wait forever when
 querying BMC device id
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
Cc: openipmi-developer@lists.sourceforge.net,
 Ioanna-Maria Alifieraki <ioanna-maria.alifieraki@canonical.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Corey Minyard <minyard@acm.org> wrote:

>On Fri, Aug 12, 2022 at 04:33:18PM -0700, Jay Vosburgh wrote:
>> We have observed issues wherein the IPMI driver will sleep forever in
>> uninterruptible wait with mutexes held (specifically, dyn_mutex and
>> bmc_reg_mutex, acquired by __bmc_get_device_id).  This occurs ultimately
>> due to a BMC firmware bug; the BMC will fail to respond to requests,
>> apparently related to the request rate, and the current logic will wait
>> forever.
>
>This really isn't the right fix.  The state machines running the
>interfaces are required to time out after a period of time, usually
>5 seconds, but that depends on how the hardware is behaving, or
>misbehaving in this case.  So though these are not timed mutexes, what
>is running below should be timed, so it shouldn't be necessary here.

	We did try and follow the code paths to figure out what's going
on at the lower levels, but the IPMI logic is fairly complex.

	As best we could determine, the send path for __bmc_get_device_id
is something like:

__bmc_get_device_id
	__get_guid
		send_guid_cmd
			i_ipmi_request
				smi_send
		wait_event

	where i_ipmi_request() calls i_ipmi_req_sysintf(), because
send_guid_cmd() sets addr_type == IPMI_SYSTEM_INTERFACE_ADDR_TYPE, and
then smi_send() to issue the request.

send_guid_cmd
	i_ipmi_request
		i_ipmi_req_sysintf
		smi_send

	I presume that if the request goes out via SMI, the response
should arrive the same way (perhaps this is incorrect).

	It looks like the only place outside of the "make a request"
path that will tweak the dyn_guid_set (needed to exit the wait_event()
call) is within guid_handler(), which is the intf->null_user_handler set
by __get_guid(), which in turn seems to be only called by
deliver_response().

	Where are the state machines for the interfaces that should time
out?  Do they (or should they) call into deliver_response() to break out
of the wait_event()?

>What is the particular hardware involved?  The buggy hardware may be
>exercising a software bug.

	The systems are white box servers from Ciara, the BMC chipset is
an AST2500.

	-J

>-corey
>
>> 
>> When the problem occurs, as each successive process queries the BMC,
>> they will block in D state waiting to acquire the mutex, and with time
>> the machine hangs. The BMC vendor has agreed it may be a hardware fault.
>> 
>> This patch addresses the problem by replacing wait_event() with
>> wait_event_timeout(). If the event times out (meaning the problem has
>> occurred) the bmc->dyn_id_set and bmc->dyn_guid_set are set to 0 and the
>> process eventually returns.
>> 
>> Fixes: aa9c9ab2443e ("ipmi: allow dynamic BMC version information")
>> Signed-off-by: Jay Vosburgh <jay.vosburgh@canonical.com>
>> Signed-off-by: Ioanna Alifieraki <ioanna-maria.alifieraki@canonical.com>
>> 
>> ---
>>  drivers/char/ipmi/ipmi_msghandler.c | 14 ++++++++++----
>>  1 file changed, 10 insertions(+), 4 deletions(-)
>> 
>> diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
>> index 703433493c85..a510839853b5 100644
>> --- a/drivers/char/ipmi/ipmi_msghandler.c
>> +++ b/drivers/char/ipmi/ipmi_msghandler.c
>> @@ -2572,7 +2572,9 @@ static int __get_device_id(struct ipmi_smi *intf, struct bmc_device *bmc)
>>  	if (rv)
>>  		goto out_reset_handler;
>>  
>> -	wait_event(intf->waitq, bmc->dyn_id_set != 2);
>> +	rv = wait_event_timeout(intf->waitq, bmc->dyn_id_set != 2, HZ * 5);
>> +	if (!rv)
>> +		bmc->dyn_id_set = 0;
>>  
>>  	if (!bmc->dyn_id_set) {
>>  		if (bmc->cc != IPMI_CC_NO_ERROR &&
>> @@ -3337,11 +3339,15 @@ static void __get_guid(struct ipmi_smi *intf)
>>  	bmc->dyn_guid_set = 2;
>>  	intf->null_user_handler = guid_handler;
>>  	rv = send_guid_cmd(intf, 0);
>> -	if (rv)
>> +	if (rv) {
>>  		/* Send failed, no GUID available. */
>>  		bmc->dyn_guid_set = 0;
>> -	else
>> -		wait_event(intf->waitq, bmc->dyn_guid_set != 2);
>> +	} else {
>> +		rv = wait_event_timeout(intf->waitq, bmc->dyn_guid_set != 2,
>> +					HZ * 5);
>> +		if (!rv)
>> +			bmc->dyn_guid_set = 0;
>> +	}
>>  
>>  	/* dyn_guid_set makes the guid data available. */
>>  	smp_rmb();
>> -- 
>> 2.34.1
>> 

---
	-Jay Vosburgh, jay.vosburgh@canonical.com


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
