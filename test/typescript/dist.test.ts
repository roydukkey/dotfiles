import dotFiles from 'dot-files';

describe('Sample test', () => {

	test('Output equals input', () => {
		expect(dotFiles('message')).toBe('message');
	});

});
