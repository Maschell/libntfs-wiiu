
#ifndef USE_LWP_LOCK

#ifndef mutex_t
typedef int mutex_t;
#endif

void __attribute__ ((weak)) _NTFS_lock_init(mutex_t *mutex, int unkwn)
{
	return;
}

void __attribute__ ((weak)) _NTFS_lock_deinit(mutex_t *mutex)
{
	return;
}

void __attribute__ ((weak)) _NTFS_lock(mutex_t *mutex)
{
	return;
}

void __attribute__ ((weak)) _NTFS_unlock(mutex_t *mutex)
{
	return;
}

#endif // USE_LWP_LOCK
