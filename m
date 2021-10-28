Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D2AAA43D932
	for <lists+openipmi-developer@lfdr.de>; Thu, 28 Oct 2021 04:09:11 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mfuqq-0002wI-Sp; Thu, 28 Oct 2021 02:09:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <sashal@kernel.org>) id 1mfuqp-0002wC-FY
 for openipmi-developer@lists.sourceforge.net; Thu, 28 Oct 2021 02:09:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=J1aPUeI7nsUc8VEFDdTT/QhDV4t3YXkf+QLEljZ1Tt8=; b=gYBs0q0Nia8WvCm9yMUPJLfq7z
 MBex+RBk8Eihil0H/Ryl57wu3FSS+PWBt9bIWUV06wq7EW5F/QrEYb+X3jB98ao+9S5bR9LtvaAck
 z1vOKgXONwZKnTVhoc2l2G2VGmKKCgDCGFppf1MoqhBMMPDrFNjxpwhOT+jc0MGqzkEc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=J1aPUeI7nsUc8VEFDdTT/QhDV4t3YXkf+QLEljZ1Tt8=; b=aZkeELuk15n4KeckemPjnU3Xhq
 5xJ+Q7FQxHLheueyMFxc+h8sKDEUi8v1itsY74aqGeFZzA5e5JY/Q8MLPbiDTIZxPvpFN4RU5Yqav
 I3HbWXZjxBOGKob9b9eet+pwyipqD2YYqlI5Y9AVIBQViWHYHXeONhEr6ZcDeIfNoPMo=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.92.3)
 id 1mfukz-0002YX-RE
 for openipmi-developer@lists.sourceforge.net; Thu, 28 Oct 2021 02:09:05 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id D71ED610FD;
 Thu, 28 Oct 2021 01:39:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1635385192;
 bh=ytYQeufNPmG0y/a7R9lsQ0yU6nEE5eEZ2Wb9wHEiiFw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VdUELk9U5B1lJTOjXGuJ9uu74yoFOnUZFbrzb98STR8X0hzIx7JGTyYPkQeOSQZGR
 6nqT2QzHY4DH6/qXVPq6G+DZ1h3De+EuAdlBpNq7R1Y3gxi06hkRPJcpRPRR/gV3/d
 n1/98h4OStSUXhJXSDL92WfW++8m+0b0NDx65oDD3h7gKwKSBo1gBVMojw9KM0vDKb
 0s1h5uwE5O0AeALvrNizx8kB1dLFWrR+mV9og/edXIjD0kBgNYT7pis2XVA5LvOG49
 /0gURT4fK+mvS3BCRzAoiyGHglYQ9nniqawI+DCJTcqBj3T/KVp59JMMs0yU/pF0Z+
 vmTRPj77pxT/w==
Date: Wed, 27 Oct 2021 21:39:50 -0400
From: Sasha Levin <sashal@kernel.org>
To: Corey Minyard <minyard@acm.org>
Message-ID: <YXn/ZnlgXp6iuWLJ@sashalap>
References: <20210917101419.GE108031@montezuma.acc.umu.se>
 <20210917120758.GA545073@minyard.net>
 <20210917125525.GF108031@montezuma.acc.umu.se>
 <20210917131916.GB545073@minyard.net>
 <20210917132648.GG108031@montezuma.acc.umu.se>
 <20210920113802.GC545073@minyard.net>
 <20210920141231.GH108031@montezuma.acc.umu.se>
 <20210920144146.GD545073@minyard.net> <YXmTbYhFvDJ0m5KX@sashalap>
 <20211027182027.GG2744412@minyard.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211027182027.GG2744412@minyard.net>
X-Headers-End: 1mfukz-0002YX-RE
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

On Wed, Oct 27, 2021 at 01:20:27PM -0500, Corey Minyard wrote:
>On Wed, Oct 27, 2021 at 01:59:09PM -0400, Sasha Levin wrote:
>> On Mon, Sep 20, 2021 at 09:41:46AM -0500, Corey Minyard wrote:
>> > On Mon, Sep 20, 2021 at 04:12:31PM +0200, Anton Lundin wrote:
>> > > On 20 September, 2021 - Corey Minyard wrote:
>> > >
>> > > > Well, that was dumb.  Fix follows...
>> > > >
>> > > > Thanks for working on this.  On your approval, I'll send this to Linus.
>> > >
>> > > Winner winner chicken dinner!
>> > >
>> > > This fixes the issue, and now panic timer works, and we get crashdumps
>> > > to pstore.
>> > >
>> > > Great job, I approve!
>> > >
>> > >
>> > > Thanks for your help getting this fixed.
>> >
>> > Thanks for reporting this.  I'll get the patch in.
>>
>> Hey Corey,
>>
>> Just checking in to see if this patch was lost; I haven't seen it in
>> Linus's tree just yet.
>
>I generally wait until the merge window for changes.  It's too late in
>the process for a patch now unless it's really critical.
>
>rc7 is out now, the merge window should be opening soon.

Ah, great. I thought it would go in via one of the -rc releases given
it's a fix.

Thank you!

-- 
Thanks,
Sasha


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
