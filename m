Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 649A143D054
	for <lists+openipmi-developer@lfdr.de>; Wed, 27 Oct 2021 20:09:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mfnMS-0004eB-Kw; Wed, 27 Oct 2021 18:09:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <sashal@kernel.org>) id 1mfnMR-0004dz-C9
 for openipmi-developer@lists.sourceforge.net; Wed, 27 Oct 2021 18:09:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=E2kXkYxvQAu34KP9H0OHFteqfJsbvy0SfhoVUlOnIeE=; b=FrLxlkFL7Rb/zOrYhr4Kl7RTMN
 cqMhYAnkpuXbyANjlomvfKKLHNqSwe6VoQvG9/8msUj1LH/7iOQwg8KNUUKEESQE00sTjjt6ZjCvx
 LxyNFOE9S46ky0UfUt22osC51fTQxUzBfexR4wIb8+ODVW4h3ABQ/q1+SW5dZ5hE128w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=E2kXkYxvQAu34KP9H0OHFteqfJsbvy0SfhoVUlOnIeE=; b=D7Dj5rTCSyEgs/it6EvYJO8pTH
 RgqXS67G1kWFxDWKIVEhZvBMzdoXLj2xnThcWl9TypDQkFbYF6qS1HRltGgNXFboI9fjtB8JjjZRO
 qEtBys48D0VeJoaz1RcdMSP4cHQ9eKwxwIlVSmWzswiaQSIz7xNL7X516c46Qj8DMcto=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mfnKP-001t9R-Gw
 for openipmi-developer@lists.sourceforge.net; Wed, 27 Oct 2021 18:09:15 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4369B60F92;
 Wed, 27 Oct 2021 17:59:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1635357555;
 bh=HQ+IZGHNYxOehvG0a9COxhhADZqU0Z/4UL+e4i3hi6k=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=n1mfUrSf5O+OArXxcIo4WLYza6v4oz8s4xzCKCVBOiQNwWxbeoRcKRwZbEYEyirv+
 Y6lqKHJDLlpnhuxfvsUfaF333R4ULwPjyhCXByg7m0qc4ayjFsk3XNxUOQVJV0dD48
 CkLe8K2xSfiHVVInrtxNwobeUb+bNRQJt234yz4rQbRgdDnNxzXSR/+6uCnXvO113Z
 7Fmmytqfjq6Qpkp6Z/i7i4U4Xt1Z+o/VM1/aJBzMFCT7O9/EsOWb4wHdo3erpWzRyh
 n3XZuYZJEde7KcaqPCzy0Y3W7uWj+RJBFPJXiqODXA5ez8/oG0IKjeGSP+kxJuqgYQ
 v3RP3EgLpcOWg==
Date: Wed, 27 Oct 2021 13:59:09 -0400
From: Sasha Levin <sashal@kernel.org>
To: Corey Minyard <minyard@acm.org>
Message-ID: <YXmTbYhFvDJ0m5KX@sashalap>
References: <20210916145300.GD108031@montezuma.acc.umu.se>
 <20210916163945.GY545073@minyard.net>
 <20210917101419.GE108031@montezuma.acc.umu.se>
 <20210917120758.GA545073@minyard.net>
 <20210917125525.GF108031@montezuma.acc.umu.se>
 <20210917131916.GB545073@minyard.net>
 <20210917132648.GG108031@montezuma.acc.umu.se>
 <20210920113802.GC545073@minyard.net>
 <20210920141231.GH108031@montezuma.acc.umu.se>
 <20210920144146.GD545073@minyard.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210920144146.GD545073@minyard.net>
X-Headers-End: 1mfnKP-001t9R-Gw
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
Cc: Anton Lundin <glance@acc.umu.se>, openipmi-developer@lists.sourceforge.net,
 LKML <linux-kernel@vger.kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Mon, Sep 20, 2021 at 09:41:46AM -0500, Corey Minyard wrote:
>On Mon, Sep 20, 2021 at 04:12:31PM +0200, Anton Lundin wrote:
>> On 20 September, 2021 - Corey Minyard wrote:
>>
>> > Well, that was dumb.  Fix follows...
>> >
>> > Thanks for working on this.  On your approval, I'll send this to Linus.
>>
>> Winner winner chicken dinner!
>>
>> This fixes the issue, and now panic timer works, and we get crashdumps
>> to pstore.
>>
>> Great job, I approve!
>>
>>
>> Thanks for your help getting this fixed.
>
>Thanks for reporting this.  I'll get the patch in.

Hey Corey,

Just checking in to see if this patch was lost; I haven't seen it in
Linus's tree just yet.

-- 
Thanks,
Sasha


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
