Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A78D716892E
	for <lists+openipmi-developer@lfdr.de>; Fri, 21 Feb 2020 22:23:54 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1j5Fm4-0004Hf-Q7; Fri, 21 Feb 2020 21:23:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1j5Fm3-0004HN-08
 for openipmi-developer@lists.sourceforge.net; Fri, 21 Feb 2020 21:23:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AFEtuia4Yv5vDxkx8Oj2pN/ljFUfhLEIPqhDr79hBXw=; b=l9RT92kva6bIIEFEiFSPY18w/o
 9zPgqOVCegemzfOJfbRYtlUfUQ1EX3QfOzZ0//NABXkNtGOPjJgYLZhretMvDj4/f3hcq0wrejQ4V
 r+MQe46Vs62FmODMc3Nu8RzgJ9FTIfL4+j/RiKFbbC0TdTfR2WzQpzj0m5XIhteO2pxs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=AFEtuia4Yv5vDxkx8Oj2pN/ljFUfhLEIPqhDr79hBXw=; b=LXOHPRw9eD8IWqB5PuWiIIO94P
 hnWzzw4LVmKCAoLf8qEkie3LtWmFT3P07Tjuk/N8PtHEV8Cai9oi32LRgr4I2X/TZwa5txMxO3FQ8
 MBT32pSK1pw5IoJoPfUgq1+p3iJkCDkylfCcVXccpD/Do3rHU096l+qAjMBxnT36EVqM=;
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1j5Flz-003bFU-3U
 for openipmi-developer@lists.sourceforge.net; Fri, 21 Feb 2020 21:23:50 +0000
Received: by mail-ot1-f68.google.com with SMTP id r27so3314963otc.8
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 21 Feb 2020 13:23:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=AFEtuia4Yv5vDxkx8Oj2pN/ljFUfhLEIPqhDr79hBXw=;
 b=iuBVBv+ALYvXAhxa8pZHH5Fs5DwtJVv1Q3prCYGnXOJc79iDbh5JIMLA4hKkVvjing
 vRQLgIs8iPquks+SMbUTQuTtCw53pGSGO9MIFx9SrBJjYeWrqobTIMN297WKGlBIsj1x
 cARK/xtVdOEPxcTISXO02IPOIkYEQ9QXnJWKIWF5u+LOHd1Y/V3m3OnmnbOITexczGnX
 YNzV8Ueq+v7yaMtc+mp0yxglF92daRQ5fRJi+LdaACsxbYt6UV1uwVowUl7czgNtoQlw
 oh+I8h+1Mst2g9X1ShdfQIC1T4a5delQejc0nUl4+IVtXqhpLWn/Vff+8FwfbBhZh5Cc
 Z1JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=AFEtuia4Yv5vDxkx8Oj2pN/ljFUfhLEIPqhDr79hBXw=;
 b=oIrSoVa5tCG/TcGfsOWhrItn1i0NhCPNUIFCg9e7ZLl/33RbhFO2wU3oIDwHGrnN+X
 4PlcWjL3eJZp6GN17ZbdXfuuJPMxLzD2Y41NeA8Ekreq96dHVOK7m0V+fQfYDKU55ZVC
 qNlbgC1RKQXwKnboT4L5HVUw1JyfYmyhLSVBSW5ESH36/E2XjMfsmGnSUW5Kj1gjH817
 Gt93XVZ7rZSn1sTtxkjrz3/aZL1mSz6kz3psiYz4jAk3tuJXcrZpQ06RDN4z+vX9flkM
 PJg75W1qfqTaoeFWsy6eElhYKMAu8ZIt77jsIAkUk4cjXV0nIAYxTnZSMA5RDpCeoasI
 jkcw==
X-Gm-Message-State: APjAAAX0EES5gw/bXYHsXjBUnU0om6NdtY2qsKI4WX15+5vR09Fnm/fg
 LuuPorkVha+5A+u4CArFfK/Q2jw=
X-Google-Smtp-Source: APXvYqwZFyXnrH19PVO/hra8XPV50xMSRoTbzXYO7BNm63+5r0wp5CA2EjB6WcQIjC6LLccdJqPFTA==
X-Received: by 2002:a9d:5786:: with SMTP id q6mr28986277oth.164.1582320220988; 
 Fri, 21 Feb 2020 13:23:40 -0800 (PST)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id z21sm1423470oto.52.2020.02.21.13.23.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 21 Feb 2020 13:23:40 -0800 (PST)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:4da6:52f9:b735:ac95])
 by serve.minyard.net (Postfix) with ESMTPSA id 1BF6218004F;
 Fri, 21 Feb 2020 21:23:39 +0000 (UTC)
Date: Fri, 21 Feb 2020 15:23:37 -0600
From: Corey Minyard <minyard@acm.org>
To: Stuart Hayes <stuart.w.hayes@gmail.com>
Message-ID: <20200221212337.GA4695@minyard.net>
References: <9727a3d5-823c-d041-a797-590b9c77ce9c@gmail.com>
 <20200220125107.GG3704@minyard.net>
 <eea36ad9-52d3-137a-bcd5-a95860e16cbc@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <eea36ad9-52d3-137a-bcd5-a95860e16cbc@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.68 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1j5Flz-003bFU-3U
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
Reply-To: minyard@acm.org
Cc: openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Fri, Feb 21, 2020 at 03:03:37PM -0600, Stuart Hayes wrote:
> 
> On 2/20/20 6:51 AM, Corey Minyard wrote:
> > On Wed, Feb 19, 2020 at 04:09:55PM -0600, Stuart Hayes wrote:
> >> Hello!
> >>
> >> I have a question.
> >>
> >> Right now, it appears that the acpi_ipmi module in the linux kernel (allowing access to the IPMI operation region in ACPI) does not get loaded automatically, which can result in undesired results or kernel log messages that don't make it obvious to most users what the issue even is.
> >>
> >> Would adding "MODULE_SOFTDEP("post: acpi_ipmi");" to ipmi_msghandler.c be an acceptable solution?
> > 
> > I'm not sure, that doesn't seem optimal for most systems.  What aboud
> > adding a request_module() call to acpi_ipmi_probe() in
> > drivers/char/ipmi/ipmi_si_platform.c?  That way you only request the
> > module if there is an ACPI IPMI device.
> > 
> 
> Thanks... I agree, that seems better, and it seems to work.
> 
> Would you consider a patch to that effect?

Please send it, I'd be happy to take it in my tree and put is upstream.

-corey

> 
> >>
> >> Right now ipmi_msghandler already has softdep for ipmi_devintf, and adding it for acpi_ipmi seems to fix the issues I'm seeing on a system that needs it (the system needs it for both the power_meter device, as well as for an ACPI _DSM method that controls PCIe SSD LEDs (this is a very new PCI ECN)).
> >>
> >> I'd be happy to submit a kernel patch to do this if there's no objection (or better solution that I've missed).
> > 
> > That would be great if you could try what I suggested.
> > 
> > Thanks,
> > 
> > -corey
> > 
> >>
> >> Thanks!
> >>


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
