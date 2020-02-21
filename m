Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BE6616888E
	for <lists+openipmi-developer@lfdr.de>; Fri, 21 Feb 2020 22:03:53 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1j5FSh-0001aO-63; Fri, 21 Feb 2020 21:03:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <stuart.w.hayes@gmail.com>) id 1j5FSg-0001aD-Cg
 for openipmi-developer@lists.sourceforge.net; Fri, 21 Feb 2020 21:03:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=X72W1Em9Fu0iXO7+vghcOO8tGYAmolSZLsEmqjexqgA=; b=BcYvArOcr+r+ZlepMEy+z7CSq2
 TyELRvx5yCDSO2Vn9dpkfLQ8c2QsM/VTzWuVBSTpmobp4DKxzSTKi8cuFItKn+Xbyqp2aFmgvnl+P
 LZar3q5vhziRRn/3OEpe/2LWpyb8iu/kz+7CpEBQdgkYa5GYgVZE015Cf5AjXDKaFxIA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=X72W1Em9Fu0iXO7+vghcOO8tGYAmolSZLsEmqjexqgA=; b=RV68aIbgQ5nyp8u33SIFScgapp
 8UPY1XpV+ILAGasUUiRooOGGze9R8Zje0J09rnOAy1k/iRlAuPnBuIzRDLbPR/pBWO2o4G0Co7x5p
 IRGKVn4jUUIKT/53/8D5sbiAhpG3id97BL5xDY6SmcYkxH422yeweoFp5+fh3guBP1mw=;
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1j5FSb-00D3Wb-TJ
 for openipmi-developer@lists.sourceforge.net; Fri, 21 Feb 2020 21:03:50 +0000
Received: by mail-oi1-f193.google.com with SMTP id b18so2977085oie.2
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 21 Feb 2020 13:03:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=X72W1Em9Fu0iXO7+vghcOO8tGYAmolSZLsEmqjexqgA=;
 b=EIGMraFREydYcPYZtCI00mgKiEWRVDFUxzNRw31zIMeJm3YbPHSOxm08AbBsvZS083
 n7Zcx0/UKn+ElB7xLumTzc7I6AtxFNlP0R3vgJqfnvfugrnXCinP8KP3e0jCkO6M/wcp
 usWOMj65ShSWL1JKqFr+YJMgVfL/Cg/ncbBTpcNNr1NXuwmdemesj0EsDnVjs9oYMinn
 AKpjwI78J6s58C/2HeaY2XOT0vMpR51HqnLsSCHPKQQECZGdq8QwdZnWfZunIlZPCYzZ
 xTjEtkD86/KyXeL58bU58IKXMtHNz4GLMngc8Ie8Wp9z4swCGDN1N+KX7tjLMYr4UP33
 VCEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=X72W1Em9Fu0iXO7+vghcOO8tGYAmolSZLsEmqjexqgA=;
 b=ZCfKUUIe2RZGHSfu9GxfKzcVdPH6neLPEwDe40EnRFDQaFzgzLvLjUTS3BOyz5qNlg
 wOUVH1lZZo1iDxuCUeabJlgWp1T9Qe6E2Da4Gl9v2N3wijBFoC9YUtfKbvP6Kgjov5sv
 dxEoIL7UviMTOYATRCT/oRcHi6B97kqzvXHMkBXzM0xUhbutGKHSYPh/pwNDpuONj05l
 rDj6PgMrJk/BbktttD3KI60hDLZGjidcsqxjcwSRdcxQ7IXbswhJgpIIEhma/IV4dJeZ
 oMpyQx+vK1SzF+m22obnkma4Ub/+sCud0rgT8fJ9NHTA6MoLYPSsDQlz6R4qcmNSOhJ1
 YEiw==
X-Gm-Message-State: APjAAAUjcX+fw7cTLfvLOq7jiumoTglwqXdoDzZ2UeUtaDdX9IeDFQvE
 Fv42mETFCFhXMj6kGaBqhlyl4zZl9ao=
X-Google-Smtp-Source: APXvYqx/a/F3H8/1C3Rp3Sjn/bqR44jT0SK8j61pFUiDFEPkdpOfNO34b2o1+BSN7E0HEWMGtgQgFA==
X-Received: by 2002:aca:b183:: with SMTP id a125mr3657872oif.83.1582319019371; 
 Fri, 21 Feb 2020 13:03:39 -0800 (PST)
Received: from [100.71.96.87] ([143.166.81.254])
 by smtp.gmail.com with ESMTPSA id s83sm1270139oif.33.2020.02.21.13.03.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 21 Feb 2020 13:03:38 -0800 (PST)
To: minyard@acm.org
References: <9727a3d5-823c-d041-a797-590b9c77ce9c@gmail.com>
 <20200220125107.GG3704@minyard.net>
From: Stuart Hayes <stuart.w.hayes@gmail.com>
Message-ID: <eea36ad9-52d3-137a-bcd5-a95860e16cbc@gmail.com>
Date: Fri, 21 Feb 2020 15:03:37 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20200220125107.GG3704@minyard.net>
Content-Language: en-US
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (stuart.w.hayes[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1j5FSb-00D3Wb-TJ
Subject: Re: [Openipmi-developer] auto-loading acpi_ipmi
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
Cc: openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net


On 2/20/20 6:51 AM, Corey Minyard wrote:
> On Wed, Feb 19, 2020 at 04:09:55PM -0600, Stuart Hayes wrote:
>> Hello!
>>
>> I have a question.
>>
>> Right now, it appears that the acpi_ipmi module in the linux kernel (allowing access to the IPMI operation region in ACPI) does not get loaded automatically, which can result in undesired results or kernel log messages that don't make it obvious to most users what the issue even is.
>>
>> Would adding "MODULE_SOFTDEP("post: acpi_ipmi");" to ipmi_msghandler.c be an acceptable solution?
> 
> I'm not sure, that doesn't seem optimal for most systems.  What aboud
> adding a request_module() call to acpi_ipmi_probe() in
> drivers/char/ipmi/ipmi_si_platform.c?  That way you only request the
> module if there is an ACPI IPMI device.
> 

Thanks... I agree, that seems better, and it seems to work.

Would you consider a patch to that effect?

>>
>> Right now ipmi_msghandler already has softdep for ipmi_devintf, and adding it for acpi_ipmi seems to fix the issues I'm seeing on a system that needs it (the system needs it for both the power_meter device, as well as for an ACPI _DSM method that controls PCIe SSD LEDs (this is a very new PCI ECN)).
>>
>> I'd be happy to submit a kernel patch to do this if there's no objection (or better solution that I've missed).
> 
> That would be great if you could try what I suggested.
> 
> Thanks,
> 
> -corey
> 
>>
>> Thanks!
>>


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
